---
title: i.MX 8 紹介
author: yuu
date: Feb 19, 2019
---

## About i.MX 8?
NXP社が発表したSoC。  
i.MX 8シリーズはたくさんある。

- i.MX 8ファミリ (2013年9月)  
  Advanced Graphics, Performance and Vitualization

- i.MX 8Mファミリ (CES 2017)  
  Advanced Audio, Voice and Video

- i.MX 8M Miniファミリ (CES 2017)  
  Embedded Consumer and Industrial Applications

- i.MX 8Xファミリ (2017年3月)  
  Safety certifiable and efficient performance

## i.MX 8 family
Basic Spec

| kind        | QuadMax                                  | QuadPlus         | Quad           | Quad X Plus | M Quad     |
|-------------|------------------------------------------|------------------|----------------|-------------|------------|
| CPU(Cortex) | A53(x4), A72(x2)                         | A53(x4), A72(x1) | A53(x4)        | A35(x4)     | A53(x4)    |
| GPU         | GC7000(x2)                               | GC7000Lite(x2)   | GC7000Lite(x2) | GC7000Lite  | GC7000Lite |
| VPU         | H.265 dec 4K/2K <br> H.264 enc/dec 1080p | <-               | <-             | <-          | <-         |
| Other cores | Cortex-M4F(x2)                           | <-               | <-             | Cortex-M4F  | Cortex-M4F |

## i.MX 8M family
Basic Spec

| kind        | Quad                                                           | QuadLite | Dual                 | Solo            |
|-------------|----------------------------------------------------------------|----------|----------------------|-----------------|
| CPU(Cortex) | A53(x4)                                                        | A53(x4)  | A53(x2)              | A53             |
| GPU         | GC7000Lite                                                     | <-       | <-                   | GC7000nanoULTRA |
| VPU         | 4Kp60, H.265 and VP9                                           | -        | 4Kp60, H.265 and VP9 | -               |
| Other cores | Cortex-M4F                                                     | <-       | <-                   | <-              |
| Audio       | 20ch in/out <br> 32-bit up to 384 kHz <br> with DSD512 support | <-       | <-                   | <-              |

## i.MX 8M Mini family
Basic Spec

| kind         | 8M Mini                        | 8M Mini Lite |
|--------------|--------------------------------|--------------|
| CPU(Cortex)  | A53(x4)                        | <-           |
| GPU          | 2D/3D graphics                 | <-           |
| Video Decode | 1080p60 H.264, H.265, VP8, VP9 | -            |
| Video Encode | 1080p60 H.264, VP8             | -            |
| Other cores  | Cortex-M4F                     | <-           |
| Audio        | *                              | <-           |

*I2S(x20). 32-bit up to 384 kHz with DSD512 and TDM support. 8-ch PDM microphone inputs.

## i.MX 8X family
Basic Spec

| kind        | QuadXPlus                             | DualXPlus  | DualX                        |
|-------------|---------------------------------------|------------|------------------------------|
| CPU(Cortex) | A35(x4)                               | A35(x2)    | A35(x2)                      |
| GPU         | GC7000Lite                            | GC7000Lite | GC7000UltraLite              |
| VPU         | 4K H.264 dec <br> 1080p H.264 enc/dec | <-         | 1080p H.264 enc/dec          |
| Other cores | Cortex-M4F                            | <-         | <-                           |
| Ethernet    | gigabit with AVB (x2)                 | <-         | gigabit with AVB <br> 10/100 |
