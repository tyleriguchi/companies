<template>
  <div>
    <div v-for="(employee, index) in employees" :key="`${index} - employees`">
      {{ employee.name }}
      <button @click="selectEmployee(employee)">select employee</button>
    </div>

    <div v-if="selectedEmployee">
      <h2>{{ selectedEmployee.name }} tasks</h2>
      <div v-for="task in sortedEmployeeTasks" :key="`task-${task.id}`">
        <task-details :task="task" />
      </div>
    </div>
  </div>
</template>

<script>
import TaskDetails from "@/modules/overview/task-details";

import TaskSorting from "@/core/task/sorting";

import OverviewApi from "@/shared/api/overview-api";

export default {
  name: "overview-page",
  components: {
    TaskDetails
  },

  props: {},

  data() {
    return {
      selectedEmployee: null,
      employees: []
    };
  },

  computed: {
    sortedEmployeeTasks() {
      if (!this.selectedEmployee) {
        return [];
      }

      return TaskSorting.sortByPriority(this.selectedEmployee.tasks);
    }
  },

  created() {
    OverviewApi.index().then(res => {
      this.employees = res.data;
      this.selectedEmployee = this.employees[0];
    });
  },

  methods: {
    selectEmployee(employee) {
      this.selectedEmployee = employee;
    }
  }
};
</script>
