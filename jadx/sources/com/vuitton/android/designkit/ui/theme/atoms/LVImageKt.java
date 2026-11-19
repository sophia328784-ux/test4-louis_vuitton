package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import defpackage.h60;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVImageKt {
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    /* JADX WARN: Code duplicated, block: B:33:0x0064  */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:49:0x008b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0094 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x009d  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, Painter painter, String str, float f2, ContentScale contentScale, Composer composer, int i2, int i3) {
        String str2;
        int i4;
        float f3;
        int i5;
        int i6;
        ContentScale contentScale2;
        int i7;
        boolean z;
        String str3;
        float f4;
        ContentScale contentScale3;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i8;
        String str4;
        ContentScale contentScale4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVImage");
        }
        Modifier modifier2 = modifierE;
        painter.getClass();
        GapComposer gapComposerH = composer.h(869581088);
        int i9 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.y(painter) ? 32 : 16);
        int i10 = i3 & 4;
        if (i10 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str2 = str;
                i9 |= gapComposerH.K(str2) ? 256 : 128;
            }
            i4 = i3 & 8;
            if (i4 != 0) {
                if ((i2 & 3072) == 0) {
                    f3 = f2;
                    if (gapComposerH.c(f3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i9 |= i5;
                }
                i6 = i3 & 16;
                if (i6 != 0) {
                    if ((i2 & 24576) == 0) {
                        contentScale2 = contentScale;
                        if (gapComposerH.K(contentScale2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i9 |= i7;
                    }
                    if ((i9 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i9 & 1, z)) {
                        if (i10 != 0) {
                            str4 = null;
                            i8 = i6;
                        } else {
                            i8 = i6;
                            str4 = str2;
                        }
                        if (i4 != 0) {
                            f4 = 0.8f;
                        } else {
                            f4 = f3;
                        }
                        if (i8 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale4 = ContentScale.Companion.f9449b;
                        } else {
                            contentScale4 = contentScale2;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        int i11 = i9 >> 3;
                        ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i11 & 112) | (i11 & 14) | 8 | (i9 & 57344), 104);
                        str3 = str4;
                        contentScale3 = contentScale4;
                    } else {
                        gapComposerH.D();
                        str3 = str2;
                        f4 = f3;
                        contentScale3 = contentScale2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
                    }
                }
                i9 |= 24576;
                contentScale2 = contentScale;
                if ((i9 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    if (i10 != 0) {
                        str4 = null;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        str4 = str2;
                    }
                    if (i4 != 0) {
                        f4 = 0.8f;
                    } else {
                        f4 = f3;
                    }
                    if (i8 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale4 = ContentScale.Companion.f9449b;
                    } else {
                        contentScale4 = contentScale2;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i12 = i9 >> 3;
                    ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i12 & 112) | (i12 & 14) | 8 | (i9 & 57344), 104);
                    str3 = str4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    str3 = str2;
                    f4 = f3;
                    contentScale3 = contentScale2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
                }
            }
            i9 |= 3072;
            f3 = f2;
            i6 = i3 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (gapComposerH.K(contentScale2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i9 |= i7;
                }
                if ((i9 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    if (i10 != 0) {
                        str4 = null;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        str4 = str2;
                    }
                    if (i4 != 0) {
                        f4 = 0.8f;
                    } else {
                        f4 = f3;
                    }
                    if (i8 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale4 = ContentScale.Companion.f9449b;
                    } else {
                        contentScale4 = contentScale2;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    int i13 = i9 >> 3;
                    ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i13 & 112) | (i13 & 14) | 8 | (i9 & 57344), 104);
                    str3 = str4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    str3 = str2;
                    f4 = f3;
                    contentScale3 = contentScale2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
                }
            }
            i9 |= 24576;
            contentScale2 = contentScale;
            if ((i9 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                if (i10 != 0) {
                    str4 = null;
                    i8 = i6;
                } else {
                    i8 = i6;
                    str4 = str2;
                }
                if (i4 != 0) {
                    f4 = 0.8f;
                } else {
                    f4 = f3;
                }
                if (i8 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale4 = ContentScale.Companion.f9449b;
                } else {
                    contentScale4 = contentScale2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                int i14 = i9 >> 3;
                ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i14 & 112) | (i14 & 14) | 8 | (i9 & 57344), 104);
                str3 = str4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                str3 = str2;
                f4 = f3;
                contentScale3 = contentScale2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
            }
        }
        i9 |= KyberEngine.KyberPolyBytes;
        str2 = str;
        i4 = i3 & 8;
        if (i4 != 0) {
            if ((i2 & 3072) == 0) {
                f3 = f2;
                if (gapComposerH.c(f3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i9 |= i5;
            }
            i6 = i3 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (gapComposerH.K(contentScale2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i9 |= i7;
                }
                if ((i9 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    if (i10 != 0) {
                        str4 = null;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        str4 = str2;
                    }
                    if (i4 != 0) {
                        f4 = 0.8f;
                    } else {
                        f4 = f3;
                    }
                    if (i8 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale4 = ContentScale.Companion.f9449b;
                    } else {
                        contentScale4 = contentScale2;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    int i15 = i9 >> 3;
                    ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i15 & 112) | (i15 & 14) | 8 | (i9 & 57344), 104);
                    str3 = str4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    str3 = str2;
                    f4 = f3;
                    contentScale3 = contentScale2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
                }
            }
            i9 |= 24576;
            contentScale2 = contentScale;
            if ((i9 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                if (i10 != 0) {
                    str4 = null;
                    i8 = i6;
                } else {
                    i8 = i6;
                    str4 = str2;
                }
                if (i4 != 0) {
                    f4 = 0.8f;
                } else {
                    f4 = f3;
                }
                if (i8 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale4 = ContentScale.Companion.f9449b;
                } else {
                    contentScale4 = contentScale2;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                int i16 = i9 >> 3;
                ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i16 & 112) | (i16 & 14) | 8 | (i9 & 57344), 104);
                str3 = str4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                str3 = str2;
                f4 = f3;
                contentScale3 = contentScale2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
            }
        }
        i9 |= 3072;
        f3 = f2;
        i6 = i3 & 16;
        if (i6 != 0) {
            if ((i2 & 24576) == 0) {
                contentScale2 = contentScale;
                if (gapComposerH.K(contentScale2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i9 |= i7;
            }
            if ((i9 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                if (i10 != 0) {
                    str4 = null;
                    i8 = i6;
                } else {
                    i8 = i6;
                    str4 = str2;
                }
                if (i4 != 0) {
                    f4 = 0.8f;
                } else {
                    f4 = f3;
                }
                if (i8 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale4 = ContentScale.Companion.f9449b;
                } else {
                    contentScale4 = contentScale2;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                int i17 = i9 >> 3;
                ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i17 & 112) | (i17 & 14) | 8 | (i9 & 57344), 104);
                str3 = str4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                str3 = str2;
                f4 = f3;
                contentScale3 = contentScale2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
            }
        }
        i9 |= 24576;
        contentScale2 = contentScale;
        if ((i9 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i9 & 1, z)) {
            if (i10 != 0) {
                str4 = null;
                i8 = i6;
            } else {
                i8 = i6;
                str4 = str2;
            }
            if (i4 != 0) {
                f4 = 0.8f;
            } else {
                f4 = f3;
            }
            if (i8 != 0) {
                ContentScale.f9447a.getClass();
                contentScale4 = ContentScale.Companion.f9449b;
            } else {
                contentScale4 = contentScale2;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            int i18 = i9 >> 3;
            ImageKt.a(painter, str4, AspectRatioKt.a(modifier2, f4, false), null, contentScale4, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, (i18 & 112) | (i18 & 14) | 8 | (i9 & 57344), 104);
            str3 = str4;
            contentScale3 = contentScale4;
        } else {
            gapComposerH.D();
            str3 = str2;
            f4 = f3;
            contentScale3 = contentScale2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h60(modifier2, painter, str3, f4, contentScale3, i2, i3);
        }
    }
}
