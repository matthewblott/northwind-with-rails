<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let customer = {};
  export let errors = {};

  const create = () => {
    router.post("/customers/new", customer, {});
  };
</script>

<h1>New Customer</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/customers`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {customer} {errors} />
