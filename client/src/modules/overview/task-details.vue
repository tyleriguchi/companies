<template>
  <div>
    <h3 class="capitalize">
      {{ task.title }}
      <button class="toggle-icon" v-if="showDetails" @click="toggleDetails">
        -
      </button>

      <button class="toggle-icon" v-if="!showDetails" @click="toggleDetails">
        +
      </button>
    </h3>
    <div v-if="showDetails">
      <div>
        <h4>Description</h4>
        <span class="capitalize">
          {{ task.description }}
        </span>
      </div>
      <div>
        <h4>Priority</h4>
        <span class="capitalize">
          {{ task.priority }}
        </span>
      </div>
      <div>
        <h4>State</h4>
        <span class="capitalize">
          {{ task.state }}
        </span>
      </div>
      <div>
        <h4>Estimate</h4>
        <span class="capitalize">
          {{ task.estimate }}
        </span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "task-details",
  props: {
    task: {
      required: true,
      type: Object
    }
  },

  data() {
    return {
      showDetails: false
    };
  },

  computed: {
    displayToggleIcon() {
      if (this.showDetails) {
        return "&#8964;";
      } else {
        return "&#8963;";
      }
    }
  },

  methods: {
    toggleDetails() {
      this.showDetails = !this.showDetails;
    }
  }
};
</script>

<style scoped>
.capitalize {
  text-transform: capitalize;
}

.toggle-icon {
  background-color: unset;
  border: none;
  font-size: 2rem;
}
</style>
