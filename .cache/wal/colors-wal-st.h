const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0c0f18", /* black   */
  [1] = "#234E64", /* red     */
  [2] = "#614C68", /* green   */
  [3] = "#AB4A41", /* yellow  */
  [4] = "#A14E5F", /* blue    */
  [5] = "#DC5F5B", /* magenta */
  [6] = "#F0915A", /* cyan    */
  [7] = "#9baabe", /* white   */

  /* 8 bright colors */
  [8]  = "#6c7685",  /* black   */
  [9]  = "#234E64",  /* red     */
  [10] = "#614C68", /* green   */
  [11] = "#AB4A41", /* yellow  */
  [12] = "#A14E5F", /* blue    */
  [13] = "#DC5F5B", /* magenta */
  [14] = "#F0915A", /* cyan    */
  [15] = "#9baabe", /* white   */

  /* special colors */
  [256] = "#0c0f18", /* background */
  [257] = "#9baabe", /* foreground */
  [258] = "#9baabe",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
