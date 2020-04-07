class Sorting {
  constructor() {
    this.sortHash = {
      critical: 1,
      medium: 2,
      low: 3
    };
  }

  sortByPriority = tasks => {
    return tasks.sort((a, b) => {
      const aSortValue = this.sortHash[a.priority];
      const bSortValue = this.sortHash[b.priority];

      if (aSortValue < bSortValue) {
        return -1;
      } else if (aSortValue > bSortValue) {
        return 1;
      } else {
        return 0;
      }
    });
  };
}

export default new Sorting();
