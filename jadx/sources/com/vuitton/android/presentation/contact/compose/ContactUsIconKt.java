package com.vuitton.android.presentation.contact.compose;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import defpackage.a;
import defpackage.r0;
import defpackage.rp;
import defpackage.z3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContactUsIconKt {
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x007f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008a  */
    /* JADX WARN: Code duplicated, block: B:45:0x008d  */
    /* JADX WARN: Code duplicated, block: B:49:0x009f  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:81:0x0103  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:86:0x013d  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, boolean z, String str, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        String str2;
        int i6;
        boolean z3;
        boolean z4;
        String str3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier modifierE;
        boolean z5;
        String str4;
        ContactUsTracker contactUsTracker;
        boolean z6;
        boolean z7;
        boolean zY;
        Object objX;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "ContactUsIcon");
        }
        contactUsUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1668840994);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i8 = i4 | (gapComposerH.K(contactUsUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        int i9 = i3 & 16;
        if (i9 == 0) {
            if ((i2 & 24576) == 0) {
                z2 = z;
                i8 |= gapComposerH.b(z2) ? 16384 : 8192;
            }
            i5 = i3 & 32;
            if (i5 != 0) {
                if ((196608 & i2) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i6 = 131072;
                    } else {
                        i6 = 65536;
                    }
                    i8 |= i6;
                }
                if ((i8 & 74899) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i8 & 1, z3)) {
                    if (i7 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ContactUsIcon");
                    }
                    modifierE = dTFunctionNameModifier;
                    if (i9 != 0) {
                        z5 = false;
                    } else {
                        z5 = z2;
                    }
                    if (i5 != 0) {
                        str4 = null;
                    } else {
                        str4 = str2;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
                    if (str4 != null) {
                        modifierE = ModifierExtKt.e(modifierE, str4);
                    }
                    if ((i8 & 112) != 32) {
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                    if ((i8 & 7168) == 2048) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    zY = z6 | z7 | gapComposerH.y(contactUsTracker) | ((i8 & 896) == 256);
                    objX = gapComposerH.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        r0 r0Var = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                        gapComposerH.q(r0Var);
                        objX = r0Var;
                    }
                    IconButtonKt.a((Function0) objX, modifierE, false, null, null, ComposableLambdaKt.b(1945182404, new z3(contactUsUiModel, z5, 3), gapComposerH), gapComposerH, 1572864, 60);
                    z4 = z5;
                    str3 = str4;
                    dTFunctionNameModifier = modifierE;
                } else {
                    gapComposerH.D();
                    z4 = z2;
                    str3 = str2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new rp(dTFunctionNameModifier, contactUsUiModel, function0, function1, z4, str3, i2, i3);
                }
            }
            i8 |= ImageMetadata.EDGE_MODE;
            str2 = str;
            if ((i8 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ContactUsIcon");
                }
                modifierE = dTFunctionNameModifier;
                if (i9 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                if (i5 != 0) {
                    str4 = null;
                } else {
                    str4 = str2;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
                if (str4 != null) {
                    modifierE = ModifierExtKt.e(modifierE, str4);
                }
                if ((i8 & 112) != 32) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                if ((i8 & 7168) == 2048) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                zY = z6 | z7 | gapComposerH.y(contactUsTracker) | ((i8 & 896) == 256);
                objX = gapComposerH.x();
                if (zY) {
                    r0 r0Var2 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                    gapComposerH.q(r0Var2);
                    objX = r0Var2;
                } else {
                    r0 r0Var3 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                    gapComposerH.q(r0Var3);
                    objX = r0Var3;
                }
                IconButtonKt.a((Function0) objX, modifierE, false, null, null, ComposableLambdaKt.b(1945182404, new z3(contactUsUiModel, z5, 3), gapComposerH), gapComposerH, 1572864, 60);
                z4 = z5;
                str3 = str4;
                dTFunctionNameModifier = modifierE;
            } else {
                gapComposerH.D();
                z4 = z2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new rp(dTFunctionNameModifier, contactUsUiModel, function0, function1, z4, str3, i2, i3);
            }
        }
        i8 |= 24576;
        z2 = z;
        i5 = i3 & 32;
        if (i5 != 0) {
            if ((196608 & i2) == 0) {
                str2 = str;
                if (gapComposerH.K(str2)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i8 |= i6;
            }
            if ((i8 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ContactUsIcon");
                }
                modifierE = dTFunctionNameModifier;
                if (i9 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                if (i5 != 0) {
                    str4 = null;
                } else {
                    str4 = str2;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
                if (str4 != null) {
                    modifierE = ModifierExtKt.e(modifierE, str4);
                }
                if ((i8 & 112) != 32) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                if ((i8 & 7168) == 2048) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                zY = z6 | z7 | gapComposerH.y(contactUsTracker) | ((i8 & 896) == 256);
                objX = gapComposerH.x();
                if (zY) {
                    r0 r0Var4 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                    gapComposerH.q(r0Var4);
                    objX = r0Var4;
                } else {
                    r0 r0Var5 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                    gapComposerH.q(r0Var5);
                    objX = r0Var5;
                }
                IconButtonKt.a((Function0) objX, modifierE, false, null, null, ComposableLambdaKt.b(1945182404, new z3(contactUsUiModel, z5, 3), gapComposerH), gapComposerH, 1572864, 60);
                z4 = z5;
                str3 = str4;
                dTFunctionNameModifier = modifierE;
            } else {
                gapComposerH.D();
                z4 = z2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new rp(dTFunctionNameModifier, contactUsUiModel, function0, function1, z4, str3, i2, i3);
            }
        }
        i8 |= ImageMetadata.EDGE_MODE;
        str2 = str;
        if ((i8 & 74899) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i8 & 1, z3)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ContactUsIcon");
            }
            modifierE = dTFunctionNameModifier;
            if (i9 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            if (i5 != 0) {
                str4 = null;
            } else {
                str4 = str2;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            if (str4 != null) {
                modifierE = ModifierExtKt.e(modifierE, str4);
            }
            if ((i8 & 112) != 32) {
                z6 = false;
            } else {
                z6 = true;
            }
            if ((i8 & 7168) == 2048) {
                z7 = true;
            } else {
                z7 = false;
            }
            zY = z6 | z7 | gapComposerH.y(contactUsTracker) | ((i8 & 896) == 256);
            objX = gapComposerH.x();
            if (zY) {
                r0 r0Var6 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                gapComposerH.q(r0Var6);
                objX = r0Var6;
            } else {
                r0 r0Var7 = new r0(contactUsUiModel, function1, contactUsTracker, function0, 9);
                gapComposerH.q(r0Var7);
                objX = r0Var7;
            }
            IconButtonKt.a((Function0) objX, modifierE, false, null, null, ComposableLambdaKt.b(1945182404, new z3(contactUsUiModel, z5, 3), gapComposerH), gapComposerH, 1572864, 60);
            z4 = z5;
            str3 = str4;
            dTFunctionNameModifier = modifierE;
        } else {
            gapComposerH.D();
            z4 = z2;
            str3 = str2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(dTFunctionNameModifier, contactUsUiModel, function0, function1, z4, str3, i2, i3);
        }
    }
}
