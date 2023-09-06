import "@typespec/http";

using TypeSpec.Http;

@service({
  title: "Contoso Real Estate Listings Service",
  version: "2023-09-06",
})
@server(
  "https://{provisionedUrl}.com", "Contoso Azure Provisioned Url",
  {
    @doc("This provisioned url should come from env vars")
    provisionedUrl?: string;
  }
)
@doc("This is the Contoso Real Estate portal listings service")
namespace ContosoRealEstate;

model Listing {
  @visibility("read")
  id: string;

  title: string;
  slug: string;
  createdAt: string;
  bathrooms: int32;
  bedrooms: int32;
  description: string;
  type: string;
  isFeatured: boolean;
  isRecommended: boolean;
  photos: string[];
  capacity: int32;
  ammenities: string[];
  reviews_stars: int32;
  reviews_int32: int32;
  address: string[];
  fees: string[];
  $$isFavorited?: boolean;
}

@error
model Error {
  code: int32;
  message: string;
}

@route("/api/getListings")
@tag("Listings")
interface Listings {
  @get list(): Listing[] | Error;
  @get read(@path id: string): Listing | Error;
}
