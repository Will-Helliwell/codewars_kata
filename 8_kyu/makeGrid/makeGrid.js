function makeGrid(size) {
    let grid = [];
    let count = 1;
    for (let i = 0; i < size; i++) {
        grid.push([])
        for (let j = 0; j < size; j++) {
            grid[i][j] = count;
            count += 1;
        }
    }
    return grid
}

makeGrid(3)