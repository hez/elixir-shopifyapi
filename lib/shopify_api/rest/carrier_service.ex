defmodule ShopifyAPI.REST.CarrierService do
  @moduledoc """
  ShopifyAPI REST API CarrierService resource
  """

  alias ShopifyAPI.AuthToken
  alias ShopifyAPI.REST

  @doc """
  Return a list of all carrier services.

  ## Example

      iex> ShopifyAPI.REST.CarrierService.all(auth)
      {:ok, [%{}, ...] = carrier_services}
  """
  def all(%AuthToken{} = auth, params \\ [], options \\ []),
    do:
      REST.get(auth, "carrier_services.json", params, Keyword.merge([pagination: :none], options))

  @doc """
  Get a single carrier service.

  ## Example

      iex> ShopifyAPI.REST.CarrierService.get(auth, string)
      {:ok, %{} = carrier_service}
  """
  def get(%AuthToken{} = auth, carrier_service_id, params \\ [], options \\ []),
    do:
      REST.get(
        auth,
        "carrier_services/#{carrier_service_id}.json",
        params,
        Keyword.merge([pagination: :none], options)
      )

  @doc """
  Create a carrier service.

  ## Example

      iex> ShopifyAPI.REST.CarrierService.create(auth, map)
      {:ok, %{} = carrier_service}
  """
  def create(%AuthToken{} = auth, %{carrier_service: %{}} = carrier_service),
    do: REST.post(auth, "carrier_services.json", carrier_service)

  @doc """
  Update a carrier service.

  ## Example

      iex> ShopifyAPI.REST.CarrierService.update(auth)
      {:ok, %{} = carrier_service}
  """
  def update(
        %AuthToken{} = auth,
        %{carrier_service: %{id: carrier_service_id}} = carrier_service
      ),
      do: REST.put(auth, "carrier_services/#{carrier_service_id}.json", carrier_service)

  @doc """
  Delete a carrier service.

  ## Example

      iex> ShopifyAPI.REST.CarrierService.delete(auth, string)
      {:ok, 200 }
  """
  def delete(%AuthToken{} = auth, carrier_service_id),
    do: REST.delete(auth, "carrier_services/#{carrier_service_id}.json")
end
