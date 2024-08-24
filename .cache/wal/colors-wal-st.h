const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#080C15", /* black   */
  [1] = "#A86154", /* red     */
  [2] = "#D7976B", /* green   */
  [3] = "#5F7389", /* yellow  */
  [4] = "#8B7B87", /* blue    */
  [5] = "#6C8EA5", /* magenta */
  [6] = "#9F989F", /* cyan    */
  [7] = "#e3d5cc", /* white   */

  /* 8 bright colors */
  [8]  = "#9e958e",  /* black   */
  [9]  = "#A86154",  /* red     */
  [10] = "#D7976B", /* green   */
  [11] = "#5F7389", /* yellow  */
  [12] = "#8B7B87", /* blue    */
  [13] = "#6C8EA5", /* magenta */
  [14] = "#9F989F", /* cyan    */
  [15] = "#e3d5cc", /* white   */

  /* special colors */
  [256] = "#080C15", /* background */
  [257] = "#e3d5cc", /* foreground */
  [258] = "#e3d5cc",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
