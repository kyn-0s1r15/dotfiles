const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#121948", /* black   */
  [1] = "#324DA0", /* red     */
  [2] = "#5867A2", /* green   */
  [3] = "#9C748C", /* yellow  */
  [4] = "#7785A9", /* blue    */
  [5] = "#6790DB", /* magenta */
  [6] = "#AEA5BA", /* cyan    */
  [7] = "#e9cbc0", /* white   */

  /* 8 bright colors */
  [8]  = "#a38e86",  /* black   */
  [9]  = "#324DA0",  /* red     */
  [10] = "#5867A2", /* green   */
  [11] = "#9C748C", /* yellow  */
  [12] = "#7785A9", /* blue    */
  [13] = "#6790DB", /* magenta */
  [14] = "#AEA5BA", /* cyan    */
  [15] = "#e9cbc0", /* white   */

  /* special colors */
  [256] = "#121948", /* background */
  [257] = "#e9cbc0", /* foreground */
  [258] = "#e9cbc0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
