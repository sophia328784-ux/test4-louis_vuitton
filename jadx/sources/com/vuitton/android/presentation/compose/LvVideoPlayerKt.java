package com.vuitton.android.presentation.compose;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.widget.FrameLayout;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.CaptionStyleCompat;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import androidx.media3.ui.SubtitleView;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.CacheFactory;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.di.AppModule;
import defpackage.a;
import defpackage.fa0;
import defpackage.fb0;
import defpackage.jx;
import defpackage.s0;
import defpackage.t30;
import defpackage.u1;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003¨\u0006\u0011²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\b\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\b\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000b\u001a\u00020\n8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\f\u001a\u0004\u0018\u00010\n8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\r\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002²\u0006\f\u0010\u0010\u001a\u00020\u000e8\nX\u008a\u0084\u0002"}, d2 = {"", "manualPlayAndWasPlaying", "manualPlayIntern", "Landroidx/media3/common/Player$Listener;", "listener", "shouldShowPlaceholder", "shouldShowError", "Landroid/util/AttributeSet;", "attrs", "hasNotifiedReady", "", "currentRes", "nextRes", "showNext", "", "currentAlpha", "nextAlpha", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LvVideoPlayerKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50928a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f50928a = iArr;
        }
    }

    public static final void a(Modifier modifier, int i2, int i3, String str, boolean z, boolean z2, Function0 function0, Composer composer, int i4) {
        int i5;
        String str2;
        Object obj;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LocalLvVideoPlayerWithFade");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-329595744);
        int i6 = i4 | (gapComposerH.d(i2) ? 32 : 16) | 12586368 | (gapComposerH.y(function0) ? 67108864 : 33554432) | 805306368;
        if (gapComposerH.p(i6 & 1, (306783379 & i6) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                obj = objX;
                ExoPlayer exoPlayerA = new ExoPlayer.Builder(context).a();
                exoPlayerA.E0(0);
                exoPlayerA.P(true);
                exoPlayerA.F0(exoPlayerA.d0().a().m(1, true).b());
                gapComposerH.q(exoPlayerA);
                obj = exoPlayerA;
            }
            obj = objX;
            ExoPlayer exoPlayer = (ExoPlayer) obj;
            exoPlayer.getClass();
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            Integer numValueOf = Integer.valueOf(i2);
            boolean zY = gapComposerH.y(exoPlayer) | gapComposerH.y(context) | ((i6 & 112) == 32);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new LvVideoPlayerKt$LocalLvVideoPlayerWithFade$1$1(exoPlayer, context, i2, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX4);
            boolean zY2 = gapComposerH.y(exoPlayer) | ((i6 & 234881024) == 67108864);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                s0 s0Var = new s0(exoPlayer, function0, mutableState, z, 5);
                gapComposerH.q(s0Var);
                objX5 = s0Var;
            }
            EffectsKt.c(exoPlayer, (Function1) objX5, gapComposerH);
            boolean zY3 = gapComposerH.y(context) | gapComposerH.y(exoPlayer);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new s0(z2, context, mutableState2, exoPlayer);
                gapComposerH.q(objX6);
            }
            AndroidView_androidKt.a((Function1) objX6, modifier2, null, gapComposerH, 48, 4);
            i5 = 4;
            str2 = "#000000";
        } else {
            gapComposerH.D();
            i5 = i3;
            str2 = str;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fb0(modifier2, i2, i5, str2, z, z2, function0, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0141  */
    /* JADX WARN: Code duplicated, block: B:101:0x0144  */
    /* JADX WARN: Code duplicated, block: B:105:0x014c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0155  */
    /* JADX WARN: Code duplicated, block: B:108:0x0159  */
    /* JADX WARN: Code duplicated, block: B:110:0x0163  */
    /* JADX WARN: Code duplicated, block: B:111:0x0166  */
    /* JADX WARN: Code duplicated, block: B:113:0x016b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0175  */
    /* JADX WARN: Code duplicated, block: B:118:0x017c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0180  */
    /* JADX WARN: Code duplicated, block: B:122:0x018a  */
    /* JADX WARN: Code duplicated, block: B:123:0x018d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0192  */
    /* JADX WARN: Code duplicated, block: B:128:0x019b  */
    /* JADX WARN: Code duplicated, block: B:129:0x019e  */
    /* JADX WARN: Code duplicated, block: B:131:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:133:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:138:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:139:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:141:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:145:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:148:0x01df  */
    /* JADX WARN: Code duplicated, block: B:150:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:154:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:158:0x0201  */
    /* JADX WARN: Code duplicated, block: B:159:0x0206  */
    /* JADX WARN: Code duplicated, block: B:161:0x020c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0212  */
    /* JADX WARN: Code duplicated, block: B:164:0x0215  */
    /* JADX WARN: Code duplicated, block: B:168:0x021d  */
    /* JADX WARN: Code duplicated, block: B:169:0x0222  */
    /* JADX WARN: Code duplicated, block: B:171:0x0228  */
    /* JADX WARN: Code duplicated, block: B:173:0x022e  */
    /* JADX WARN: Code duplicated, block: B:174:0x0231  */
    /* JADX WARN: Code duplicated, block: B:178:0x0239  */
    /* JADX WARN: Code duplicated, block: B:179:0x023e  */
    /* JADX WARN: Code duplicated, block: B:181:0x0244  */
    /* JADX WARN: Code duplicated, block: B:183:0x024a  */
    /* JADX WARN: Code duplicated, block: B:187:0x0254  */
    /* JADX WARN: Code duplicated, block: B:188:0x0259  */
    /* JADX WARN: Code duplicated, block: B:190:0x025f  */
    /* JADX WARN: Code duplicated, block: B:192:0x0265  */
    /* JADX WARN: Code duplicated, block: B:196:0x026d  */
    /* JADX WARN: Code duplicated, block: B:198:0x0272  */
    /* JADX WARN: Code duplicated, block: B:200:0x0278  */
    /* JADX WARN: Code duplicated, block: B:202:0x027e  */
    /* JADX WARN: Code duplicated, block: B:206:0x0287  */
    /* JADX WARN: Code duplicated, block: B:207:0x0290  */
    /* JADX WARN: Code duplicated, block: B:209:0x0294  */
    /* JADX WARN: Code duplicated, block: B:211:0x029e  */
    /* JADX WARN: Code duplicated, block: B:212:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:214:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:217:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:223:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:226:0x02cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:227:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:228:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:231:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:232:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:234:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:235:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:237:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:238:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:240:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:241:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:243:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:244:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:246:0x0303  */
    /* JADX WARN: Code duplicated, block: B:247:0x0306  */
    /* JADX WARN: Code duplicated, block: B:249:0x030a  */
    /* JADX WARN: Code duplicated, block: B:250:0x030d  */
    /* JADX WARN: Code duplicated, block: B:252:0x0311  */
    /* JADX WARN: Code duplicated, block: B:253:0x0314  */
    /* JADX WARN: Code duplicated, block: B:255:0x0318  */
    /* JADX WARN: Code duplicated, block: B:256:0x031b  */
    /* JADX WARN: Code duplicated, block: B:258:0x031f  */
    /* JADX WARN: Code duplicated, block: B:259:0x0321  */
    /* JADX WARN: Code duplicated, block: B:261:0x0325  */
    /* JADX WARN: Code duplicated, block: B:262:0x0328  */
    /* JADX WARN: Code duplicated, block: B:264:0x032c  */
    /* JADX WARN: Code duplicated, block: B:265:0x032f  */
    /* JADX WARN: Code duplicated, block: B:267:0x0333  */
    /* JADX WARN: Code duplicated, block: B:268:0x0336  */
    /* JADX WARN: Code duplicated, block: B:270:0x033a  */
    /* JADX WARN: Code duplicated, block: B:271:0x033d  */
    /* JADX WARN: Code duplicated, block: B:273:0x0341  */
    /* JADX WARN: Code duplicated, block: B:274:0x0344  */
    /* JADX WARN: Code duplicated, block: B:276:0x0348  */
    /* JADX WARN: Code duplicated, block: B:277:0x034a  */
    /* JADX WARN: Code duplicated, block: B:279:0x034e  */
    /* JADX WARN: Code duplicated, block: B:280:0x0351  */
    /* JADX WARN: Code duplicated, block: B:283:0x0357  */
    /* JADX WARN: Code duplicated, block: B:285:0x035d  */
    /* JADX WARN: Code duplicated, block: B:287:0x036c  */
    /* JADX WARN: Code duplicated, block: B:290:0x037e  */
    /* JADX WARN: Code duplicated, block: B:292:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:294:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:295:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:297:0x043e  */
    /* JADX WARN: Code duplicated, block: B:299:0x0442  */
    /* JADX WARN: Code duplicated, block: B:301:0x0466  */
    /* JADX WARN: Code duplicated, block: B:304:0x0477  */
    /* JADX WARN: Code duplicated, block: B:306:0x047f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:309:0x0484  */
    /* JADX WARN: Code duplicated, block: B:313:0x049a  */
    /* JADX WARN: Code duplicated, block: B:315:0x049e  */
    /* JADX WARN: Code duplicated, block: B:316:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:320:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:323:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:324:0x04c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:327:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:331:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:334:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:335:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:338:0x0506  */
    /* JADX WARN: Code duplicated, block: B:339:0x0508  */
    /* JADX WARN: Code duplicated, block: B:342:0x0515  */
    /* JADX WARN: Code duplicated, block: B:343:0x0517  */
    /* JADX WARN: Code duplicated, block: B:346:0x0522  */
    /* JADX WARN: Code duplicated, block: B:347:0x0524  */
    /* JADX WARN: Code duplicated, block: B:350:0x052f  */
    /* JADX WARN: Code duplicated, block: B:351:0x0531  */
    /* JADX WARN: Code duplicated, block: B:354:0x0541  */
    /* JADX WARN: Code duplicated, block: B:355:0x0543  */
    /* JADX WARN: Code duplicated, block: B:358:0x054d  */
    /* JADX WARN: Code duplicated, block: B:359:0x054f  */
    /* JADX WARN: Code duplicated, block: B:362:0x055c  */
    /* JADX WARN: Code duplicated, block: B:363:0x055e  */
    /* JADX WARN: Code duplicated, block: B:366:0x0569  */
    /* JADX WARN: Code duplicated, block: B:367:0x056b  */
    /* JADX WARN: Code duplicated, block: B:370:0x0573  */
    /* JADX WARN: Code duplicated, block: B:371:0x0575  */
    /* JADX WARN: Code duplicated, block: B:374:0x057d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:377:0x059d  */
    /* JADX WARN: Code duplicated, block: B:380:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:381:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:383:0x0612 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:386:0x0618  */
    /* JADX WARN: Code duplicated, block: B:390:0x0633  */
    /* JADX WARN: Code duplicated, block: B:393:0x0661 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:394:0x0663  */
    /* JADX WARN: Code duplicated, block: B:397:0x0674  */
    /* JADX WARN: Code duplicated, block: B:398:0x067e  */
    /* JADX WARN: Code duplicated, block: B:401:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:403:0x06af  */
    /* JADX WARN: Code duplicated, block: B:404:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:407:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:410:0x06fb  */
    /* JADX WARN: Code duplicated, block: B:411:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:414:0x0709 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:415:0x070b  */
    /* JADX WARN: Code duplicated, block: B:418:0x0734  */
    /* JADX WARN: Code duplicated, block: B:419:0x0736  */
    /* JADX WARN: Code duplicated, block: B:422:0x0745  */
    /* JADX WARN: Code duplicated, block: B:423:0x0747  */
    /* JADX WARN: Code duplicated, block: B:426:0x0759 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:429:0x0761  */
    /* JADX WARN: Code duplicated, block: B:432:0x07e4  */
    /* JADX WARN: Code duplicated, block: B:434:0x07e9  */
    /* JADX WARN: Code duplicated, block: B:437:0x0818  */
    /* JADX WARN: Code duplicated, block: B:439:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:45:0x0087  */
    /* JADX WARN: Code duplicated, block: B:47:0x008b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0093  */
    /* JADX WARN: Code duplicated, block: B:50:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00af  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:81:0x0100  */
    /* JADX WARN: Code duplicated, block: B:85:0x010e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0113  */
    /* JADX WARN: Code duplicated, block: B:88:0x0119  */
    /* JADX WARN: Code duplicated, block: B:90:0x011f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0122  */
    /* JADX WARN: Code duplicated, block: B:95:0x0130  */
    /* JADX WARN: Code duplicated, block: B:96:0x0135  */
    /* JADX WARN: Code duplicated, block: B:98:0x013b  */
    public static final void b(Modifier modifier, final ExoPlayer exoPlayer, final String str, String str2, Float f2, boolean z, String str3, ContentScale contentScale, boolean z2, boolean z3, boolean z4, boolean z5, Boolean bool, boolean z6, int i2, Function2 function2, Function2 function3, Function0 function0, Function1 function1, Function0 function4, Function0 function5, Composer composer, final int i3, final int i4, final int i5, final int i6) {
        int i7;
        String str4;
        int i8;
        Float f3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        String str5;
        int i14;
        Modifier modifier2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        int i44;
        boolean z7;
        final boolean z8;
        final ContentScale contentScale2;
        final boolean z9;
        final boolean z10;
        final Boolean bool2;
        final Function2 function6;
        final Function2 function7;
        final Function0 function8;
        final Function1 function9;
        final Function0 function10;
        final Function0 function11;
        GapComposer gapComposer;
        final String str6;
        final Float f4;
        final String str7;
        final Modifier modifier3;
        final boolean z11;
        final boolean z12;
        final boolean z13;
        final int i45;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str8;
        Float f5;
        boolean z14;
        String str9;
        ContentScale contentScale3;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        Boolean bool3;
        boolean z19;
        int i46;
        Function2 function12;
        Function2 function13;
        Function0 function14;
        Function1 function15;
        Function0 function16;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function17;
        Boolean bool4;
        GapComposer gapComposer2;
        final Context context;
        MutableState mutableStateL;
        Object objX;
        final MutableState mutableState;
        Object objX2;
        MutableState mutableState2;
        Object objX3;
        CacheDataSource.Factory factory;
        Object objX4;
        MutableState mutableState3;
        Object objX5;
        MutableState mutableState4;
        Object objX6;
        MutableState mutableState5;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        Object objX7;
        ExoPlayer exoPlayer2;
        String str10;
        String str11;
        boolean z31;
        boolean z32;
        boolean z33;
        Boolean bool5;
        boolean z34;
        Function0 function18;
        Function0 function19;
        Function0 function20;
        MutableState mutableState6;
        boolean zBooleanValue;
        boolean zB;
        Object objX8;
        Object objX9;
        LifecycleEventObserver lifecycleEventObserver;
        boolean zK;
        Object objX10;
        Modifier modifierA;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function21;
        final int i47;
        Object objX11;
        final MutableState mutableState7;
        boolean z35;
        boolean zY;
        Object objX12;
        boolean z36;
        boolean z37;
        boolean z38;
        boolean zD;
        Object objX13;
        boolean z39;
        int i48;
        String str12;
        Function2 function22;
        Function2 function23;
        ContentScale contentScale4;
        boolean z40;
        CacheFactory cacheFactory;
        boolean z41;
        MeasurePolicy measurePolicyD2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Function0 function24;
        Object objX14;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LvVideoPlayer");
        }
        exoPlayer.getClass();
        str.getClass();
        GapComposer gapComposerH = composer.h(1373976555);
        Applier applier = gapComposerH.f7976a;
        int i49 = i6 & 1;
        if (i49 != 0) {
            i7 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i7 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i7 = i3;
        }
        if ((i3 & 48) == 0) {
            i7 |= gapComposerH.y(exoPlayer) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.K(str) ? 256 : 128;
        }
        int i50 = i6 & 8;
        if (i50 == 0) {
            if ((i3 & 3072) == 0) {
                str4 = str2;
                i7 |= gapComposerH.K(str4) ? 2048 : 1024;
            }
            i8 = i6 & 16;
            if (i8 != 0) {
                if ((i3 & 24576) == 0) {
                    f3 = f2;
                    if (gapComposerH.K(f3)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i7 |= i9;
                }
                i10 = i6 & 32;
                if (i10 != 0) {
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        i11 = 131072;
                        if (gapComposerH.b(z)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i7 |= i12;
                    }
                    i13 = i6 & 64;
                    if (i13 != 0) {
                        i7 |= 1572864;
                        str5 = str3;
                    } else {
                        str5 = str3;
                        if ((i3 & 1572864) == 0) {
                            if (gapComposerH.K(str5)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i7 |= i14;
                        }
                    }
                    modifier2 = modifierE;
                    i15 = i6 & 128;
                    if (i15 != 0) {
                        i7 |= 12582912;
                    } else if ((i3 & 12582912) == 0) {
                        if (gapComposerH.K(contentScale)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i7 |= i16;
                    }
                    i17 = i6 & 256;
                    if (i17 != 0) {
                        i7 |= 100663296;
                    } else if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z2)) {
                            i18 = 67108864;
                        } else {
                            i18 = 33554432;
                        }
                        i7 |= i18;
                    }
                    i19 = i6 & 512;
                    if (i19 != 0) {
                        i7 |= 805306368;
                    } else if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z3)) {
                            i20 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i20 = 268435456;
                        }
                        i7 |= i20;
                    }
                    i21 = i6 & 1024;
                    if (i21 != 0) {
                        i22 = i4 | 6;
                    } else if ((i4 & 6) == 0) {
                        if (gapComposerH.b(z4)) {
                            i23 = 4;
                        } else {
                            i23 = 2;
                        }
                        i22 = i4 | i23;
                    } else {
                        i22 = i4;
                    }
                    i24 = i6 & 2048;
                    if (i24 != 0) {
                        i22 |= 48;
                    } else if ((i4 & 48) != 0) {
                        if (gapComposerH.b(z5)) {
                            i25 = 32;
                        } else {
                            i25 = 16;
                        }
                        i22 |= i25;
                    }
                    i26 = i22;
                    i27 = i6 & 4096;
                    if (i27 != 0) {
                        i28 = i26 | KyberEngine.KyberPolyBytes;
                    } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                        i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
                    } else {
                        i28 = i26;
                    }
                    i29 = i6 & 8192;
                    if (i29 != 0) {
                        i31 = i28 | 3072;
                    } else {
                        i30 = i28;
                        if ((i4 & 3072) == 0) {
                            i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                        } else {
                            i31 = i30;
                        }
                    }
                    i32 = i6 & 16384;
                    if (i32 != 0) {
                        i33 = i31;
                        if ((i4 & 24576) == 0) {
                            i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                        }
                        i34 = i6 & 32768;
                        if (i34 != 0) {
                            i33 |= ImageMetadata.EDGE_MODE;
                        } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.y(function2)) {
                                i35 = i11;
                            } else {
                                i35 = 65536;
                            }
                            i33 |= i35;
                        }
                        i36 = i6 & 65536;
                        if (i36 != 0) {
                            i33 |= 1572864;
                        } else if ((i4 & 1572864) == 0) {
                            if (gapComposerH.y(function3)) {
                                i37 = 1048576;
                            } else {
                                i37 = 524288;
                            }
                            i33 |= i37;
                        }
                        i38 = i6 & i11;
                        if (i38 != 0) {
                            i33 |= 12582912;
                        } else if ((i4 & 12582912) == 0) {
                            i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                        }
                        i39 = i6 & 262144;
                        if (i39 != 0) {
                            i33 |= 100663296;
                        } else if ((i4 & 100663296) == 0) {
                            i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                        }
                        i40 = i6 & 524288;
                        if (i40 != 0) {
                            i33 |= 805306368;
                        } else if ((i4 & 805306368) == 0) {
                            i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                        }
                        i41 = i33;
                        i42 = i6 & 1048576;
                        if (i42 != 0) {
                            i43 = 6;
                        } else if ((i5 & 6) == 0) {
                            if (gapComposerH.y(function5)) {
                                i44 = 4;
                            } else {
                                i44 = 2;
                            }
                            i43 = i5 | i44;
                        } else {
                            i43 = i5;
                        }
                        if ((i7 & 306783379) != 306783378 && (i41 & 306783379) == 306783378 && (i43 & 3) == 2) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                        if (gapComposerH.p(i7 & 1, z7)) {
                            if (i49 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i50 != 0) {
                                str8 = null;
                            } else {
                                str8 = str4;
                            }
                            if (i8 != 0) {
                                f5 = null;
                            } else {
                                f5 = f3;
                            }
                            if (i10 != 0) {
                                z14 = false;
                            } else {
                                z14 = z;
                            }
                            if (i13 != 0) {
                                str9 = null;
                            } else {
                                str9 = str5;
                            }
                            if (i15 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale3 = ContentScale.Companion.d;
                            } else {
                                contentScale3 = contentScale;
                            }
                            if (i17 != 0) {
                                z15 = true;
                            } else {
                                z15 = z2;
                            }
                            if (i19 != 0) {
                                z16 = false;
                            } else {
                                z16 = z3;
                            }
                            if (i21 != 0) {
                                z17 = true;
                            } else {
                                z17 = z4;
                            }
                            if (i24 != 0) {
                                z18 = false;
                            } else {
                                z18 = z5;
                            }
                            if (i27 != 0) {
                                bool3 = null;
                            } else {
                                bool3 = bool;
                            }
                            if (i29 != 0) {
                                z19 = true;
                            } else {
                                z19 = z6;
                            }
                            if (i32 != 0) {
                                i46 = 0;
                            } else {
                                i46 = i2;
                            }
                            if (i34 != 0) {
                                function12 = null;
                            } else {
                                function12 = function2;
                            }
                            if (i36 != 0) {
                                function13 = null;
                            } else {
                                function13 = function3;
                            }
                            if (i38 != 0) {
                                function14 = null;
                            } else {
                                function14 = function0;
                            }
                            if (i39 != 0) {
                                function15 = null;
                            } else {
                                function15 = function1;
                            }
                            if (i40 != 0) {
                                function16 = null;
                            } else {
                                function16 = function4;
                            }
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (i42 != 0) {
                                objX14 = gapComposerH.x();
                                if (objX14 == composer$Companion$Empty$1) {
                                    objX14 = new fa0(9);
                                    gapComposerH.q(objX14);
                                }
                                function17 = (Function0) objX14;
                            } else {
                                function17 = function5;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                                gapComposerH.L(1098171633);
                                Alignment.f8582a.getClass();
                                measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                                ComposeUiNode.b0.getClass();
                                function24 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                if (gapComposerH.S) {
                                    gapComposerH.C(function24);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                                Boolean bool6 = bool3;
                                TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                                gapComposer2 = gapComposerH;
                                gapComposer2.Z(true);
                                gapComposer2.Z(false);
                                bool5 = bool6;
                                function15 = function15;
                                function20 = function16;
                                str11 = str8;
                                i48 = i46;
                                contentScale4 = contentScale3;
                                z39 = z14;
                                z33 = z15;
                                str12 = str9;
                                z31 = z16;
                                z32 = z17;
                                z34 = z18;
                                z36 = z19;
                                function22 = function12;
                                function23 = function13;
                                function19 = function14;
                                function18 = function17;
                            } else {
                                bool4 = bool3;
                                gapComposer2 = gapComposerH;
                                gapComposer2.L(1098674794);
                                context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                                mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                                objX = gapComposer2.x();
                                if (objX == composer$Companion$Empty$1) {
                                    objX = SnapshotStateKt.g(Boolean.FALSE);
                                    gapComposer2.q(objX);
                                }
                                mutableState = (MutableState) objX;
                                objX2 = gapComposer2.x();
                                if (objX2 == composer$Companion$Empty$1) {
                                    if (!Intrinsics.c(bool4, Boolean.TRUE) || z17) {
                                        z41 = true;
                                    } else {
                                        z41 = false;
                                    }
                                    objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                                    gapComposer2.q(objX2);
                                }
                                mutableState2 = (MutableState) objX2;
                                objX3 = gapComposer2.x();
                                if (objX3 == composer$Companion$Empty$1) {
                                    cacheFactory = AppModule.f51474a;
                                    if (cacheFactory != null) {
                                        objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                                    } else {
                                        objX3 = null;
                                    }
                                    gapComposer2.q(objX3);
                                }
                                factory = (CacheDataSource.Factory) objX3;
                                objX4 = gapComposer2.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = SnapshotStateKt.g(null);
                                    gapComposer2.q(objX4);
                                }
                                mutableState3 = (MutableState) objX4;
                                objX5 = gapComposer2.x();
                                if (objX5 == composer$Companion$Empty$1) {
                                    if (str9 == null || function12 != null) {
                                        z40 = true;
                                    } else {
                                        z40 = false;
                                    }
                                    objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                                    gapComposer2.q(objX5);
                                }
                                mutableState4 = (MutableState) objX5;
                                objX6 = gapComposer2.x();
                                if (objX6 == composer$Companion$Empty$1) {
                                    objX6 = SnapshotStateKt.g(Boolean.FALSE);
                                    gapComposer2.q(objX6);
                                }
                                mutableState5 = (MutableState) objX6;
                                boolean zY2 = gapComposer2.y(exoPlayer);
                                if ((i43 & 14) == 4) {
                                    z20 = true;
                                } else {
                                    z20 = false;
                                }
                                boolean z42 = zY2 | z20;
                                if ((29360128 & i41) == 8388608) {
                                    z21 = true;
                                } else {
                                    z21 = false;
                                }
                                boolean z43 = z42 | z21;
                                if ((i41 & 1879048192) == 536870912) {
                                    z22 = true;
                                } else {
                                    z22 = false;
                                }
                                boolean z44 = z43 | z22;
                                if ((i7 & 896) == 256) {
                                    z23 = true;
                                } else {
                                    z23 = false;
                                }
                                boolean z45 = z44 | z23;
                                if ((i7 & 7168) == 2048) {
                                    z24 = true;
                                } else {
                                    z24 = false;
                                }
                                boolean zY3 = z45 | z24 | gapComposer2.y(factory);
                                if ((i7 & 1879048192) == 536870912) {
                                    z25 = true;
                                } else {
                                    z25 = false;
                                }
                                boolean z46 = zY3 | z25;
                                if ((i41 & 14) == 4) {
                                    z26 = true;
                                } else {
                                    z26 = false;
                                }
                                boolean z47 = z46 | z26;
                                if ((i7 & 234881024) == 67108864) {
                                    z27 = true;
                                } else {
                                    z27 = false;
                                }
                                boolean z48 = z47 | z27;
                                if ((i41 & 896) == 256) {
                                    z28 = true;
                                } else {
                                    z28 = false;
                                }
                                boolean z49 = z28 | z48;
                                if ((i41 & 112) == 32) {
                                    z29 = true;
                                } else {
                                    z29 = false;
                                }
                                z30 = z49 | z29;
                                objX7 = gapComposer2.x();
                                if (!z30 || objX7 == composer$Companion$Empty$1) {
                                    Function0 function25 = function16;
                                    String str13 = str8;
                                    boolean z50 = z15;
                                    boolean z51 = z16;
                                    boolean z52 = z17;
                                    boolean z53 = z18;
                                    Function0 function26 = function14;
                                    Function0 function27 = function17;
                                    objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str13, factory, z51, z52, z50, bool4, z53, mutableState3, function27, mutableState5, function26, function25, mutableState4, mutableState2, null);
                                    exoPlayer2 = exoPlayer;
                                    str10 = str;
                                    str11 = str13;
                                    z31 = z51;
                                    z32 = z52;
                                    z33 = z50;
                                    bool5 = bool4;
                                    z34 = z53;
                                    function18 = function27;
                                    function19 = function26;
                                    function20 = function25;
                                    mutableState6 = mutableState2;
                                    gapComposer2.q(objX7);
                                } else {
                                    exoPlayer2 = exoPlayer;
                                    str10 = str;
                                    bool5 = bool4;
                                    mutableState6 = mutableState2;
                                    function20 = function16;
                                    str11 = str8;
                                    z33 = z15;
                                    z31 = z16;
                                    z32 = z17;
                                    z34 = z18;
                                    function19 = function14;
                                    function18 = function17;
                                }
                                EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                                if (bool5 == null) {
                                    gapComposer2.L(1103314377);
                                    gapComposer2.Z(false);
                                    str11 = str11;
                                } else {
                                    gapComposer2.L(1103314378);
                                    zBooleanValue = bool5.booleanValue();
                                    zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                                    objX8 = gapComposer2.x();
                                    if (zB || objX8 == composer$Companion$Empty$1) {
                                        objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                        gapComposer2.q(objX8);
                                    }
                                    EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                                    gapComposer2.Z(false);
                                }
                                objX9 = gapComposer2.x();
                                if (objX9 == composer$Companion$Empty$1) {
                                    final ExoPlayer exoPlayer3 = exoPlayer2;
                                    final MutableState mutableState8 = mutableState6;
                                    final boolean z54 = z32;
                                    final boolean z55 = z34;
                                    objX9 = new LifecycleEventObserver() { // from class: gb0
                                        @Override // androidx.lifecycle.LifecycleEventObserver
                                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                            int i51 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                            ExoPlayer exoPlayer4 = exoPlayer3;
                                            MutableState mutableState9 = mutableState;
                                            if (i51 == 1) {
                                                mutableState9.setValue(Boolean.valueOf(((Boolean) mutableState8.getF10755b()).booleanValue() ? exoPlayer4.isPlaying() : false));
                                                exoPlayer4.pause();
                                                return;
                                            }
                                            if (i51 != 2) {
                                                if (i51 != 3) {
                                                    return;
                                                }
                                                exoPlayer4.release();
                                            } else {
                                                if (z54 || ((Boolean) mutableState9.getF10755b()).booleanValue()) {
                                                    exoPlayer4.c();
                                                }
                                                if (z55) {
                                                    exoPlayer4.pause();
                                                }
                                            }
                                        }
                                    };
                                    gapComposer2.q(objX9);
                                }
                                lifecycleEventObserver = (LifecycleEventObserver) objX9;
                                Object f10755b = mutableStateL.getF10755b();
                                zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                                objX10 = gapComposer2.x();
                                if (zK || objX10 == composer$Companion$Empty$1) {
                                    objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                    gapComposer2.q(objX10);
                                }
                                EffectsKt.c(f10755b, (Function1) objX10, gapComposer2);
                                if (f5 != null) {
                                    modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                                } else {
                                    modifierA = dTFunctionNameModifier;
                                }
                                Modifier modifierO = dTFunctionNameModifier.o(modifierA);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposer2.T);
                                persistentCompositionLocalMapU = gapComposer2.U();
                                modifierC = ComposedModifierKt.c(gapComposer2, modifierO);
                                ComposeUiNode.b0.getClass();
                                function21 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposer2.B();
                                if (gapComposer2.S) {
                                    gapComposer2.C(function21);
                                } else {
                                    gapComposer2.o();
                                }
                                Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                                Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                                i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                                objX11 = gapComposer2.x();
                                if (objX11 == composer$Companion$Empty$1) {
                                    objX11 = SnapshotStateKt.g(null);
                                    gapComposer2.q(objX11);
                                }
                                mutableState7 = (MutableState) objX11;
                                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LvVideoPlayer");
                                if ((i41 & 234881024) == 67108864) {
                                    z35 = true;
                                } else {
                                    z35 = false;
                                }
                                zY = z35 | gapComposer2.y(exoPlayer2);
                                objX12 = gapComposer2.x();
                                if (zY || objX12 == composer$Companion$Empty$1) {
                                    objX12 = new t30(function15, exoPlayer2, 11);
                                    gapComposer2.q(objX12);
                                }
                                boolean z56 = z19;
                                Modifier modifierD = ClickableKt.d(dTFunctionNameModifier2, z56, null, null, (Function0) objX12, 14);
                                z36 = z56;
                                if ((458752 & i7) == i11) {
                                    z37 = true;
                                } else {
                                    z37 = false;
                                }
                                boolean zY4 = z37 | gapComposer2.y(context);
                                if ((i41 & 57344) == 16384) {
                                    z38 = true;
                                } else {
                                    z38 = false;
                                }
                                zD = zY4 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                                objX13 = gapComposer2.x();
                                if (!zD || objX13 == composer$Companion$Empty$1) {
                                    final ExoPlayer exoPlayer4 = exoPlayer2;
                                    final int i51 = i46;
                                    final boolean z57 = z14;
                                    objX13 = new Function1() { // from class: hb0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                            ((Context) obj).getClass();
                                            boolean z58 = z57;
                                            Context context2 = context;
                                            MutableState mutableState9 = mutableState7;
                                            if (z58) {
                                                XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                                xml.getClass();
                                                for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                                }
                                                mutableState9.setValue(Xml.asAttributeSet(xml));
                                            }
                                            PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState9.getF10755b());
                                            PlayerControlView playerControlView = playerView.m;
                                            if (playerControlView != null) {
                                                playerControlView.g();
                                            }
                                            playerView.setUseController(false);
                                            playerView.setResizeMode(i51);
                                            playerView.setShutterBackgroundColor(i47);
                                            playerView.setKeepContentOnPlayerReset(true);
                                            SubtitleView subtitleView = playerView.getSubtitleView();
                                            if (subtitleView != null) {
                                                subtitleView.setApplyEmbeddedFontSizes(false);
                                                subtitleView.a();
                                                subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                            }
                                            playerView.setPlayer(exoPlayer4);
                                            playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                            return playerView;
                                        }
                                    };
                                    z39 = z57;
                                    i48 = i51;
                                    gapComposer2.q(objX13);
                                } else {
                                    i48 = i46;
                                    z39 = z14;
                                }
                                AndroidView_androidKt.a((Function1) objX13, modifierD, null, gapComposer2, 0, 4);
                                ContentScale contentScale5 = contentScale3;
                                String str14 = str9;
                                Function2 function28 = function12;
                                Function2 function29 = function13;
                                str12 = str14;
                                function22 = function28;
                                function23 = function29;
                                contentScale4 = contentScale5;
                                ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str14, function28, function29, contentScale5, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                                gapComposer2.Z(true);
                                gapComposer2.Z(false);
                            }
                            i45 = i48;
                            contentScale2 = contentScale4;
                            bool2 = bool5;
                            function6 = function22;
                            function7 = function23;
                            gapComposer = gapComposer2;
                            z11 = z33;
                            z9 = z31;
                            modifier3 = dTFunctionNameModifier;
                            z10 = z34;
                            function8 = function19;
                            function10 = function20;
                            f4 = f5;
                            z8 = z39;
                            str6 = str12;
                            z13 = z36;
                            function9 = function15;
                            z12 = z32;
                            function11 = function18;
                            str7 = str11;
                        } else {
                            gapComposerH.D();
                            z8 = z;
                            contentScale2 = contentScale;
                            z9 = z3;
                            z10 = z5;
                            bool2 = bool;
                            function6 = function2;
                            function7 = function3;
                            function8 = function0;
                            function9 = function1;
                            function10 = function4;
                            function11 = function5;
                            gapComposer = gapComposerH;
                            str6 = str5;
                            f4 = f3;
                            str7 = str4;
                            modifier3 = modifier2;
                            z11 = z2;
                            z12 = z4;
                            z13 = z6;
                            i45 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: ib0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    int iA3 = RecomposeScopeImplKt.a(i5);
                                    LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i33 = i31 | 24576;
                    i34 = i6 & 32768;
                    if (i34 != 0) {
                        i33 |= ImageMetadata.EDGE_MODE;
                    } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.y(function2)) {
                            i35 = i11;
                        } else {
                            i35 = 65536;
                        }
                        i33 |= i35;
                    }
                    i36 = i6 & 65536;
                    if (i36 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        if (gapComposerH.y(function3)) {
                            i37 = 1048576;
                        } else {
                            i37 = 524288;
                        }
                        i33 |= i37;
                    }
                    i38 = i6 & i11;
                    if (i38 != 0) {
                        i33 |= 12582912;
                    } else if ((i4 & 12582912) == 0) {
                        i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                    }
                    i39 = i6 & 262144;
                    if (i39 != 0) {
                        i33 |= 100663296;
                    } else if ((i4 & 100663296) == 0) {
                        i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                    }
                    i40 = i6 & 524288;
                    if (i40 != 0) {
                        i33 |= 805306368;
                    } else if ((i4 & 805306368) == 0) {
                        i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                    }
                    i41 = i33;
                    i42 = i6 & 1048576;
                    if (i42 != 0) {
                        i43 = 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function5)) {
                            i44 = 4;
                        } else {
                            i44 = 2;
                        }
                        i43 = i5 | i44;
                    } else {
                        i43 = i5;
                    }
                    if ((i7 & 306783379) != 306783378) {
                        z7 = true;
                    } else {
                        z7 = true;
                    }
                    if (gapComposerH.p(i7 & 1, z7)) {
                        if (i49 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i50 != 0) {
                            str8 = null;
                        } else {
                            str8 = str4;
                        }
                        if (i8 != 0) {
                            f5 = null;
                        } else {
                            f5 = f3;
                        }
                        if (i10 != 0) {
                            z14 = false;
                        } else {
                            z14 = z;
                        }
                        if (i13 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        if (i15 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale3 = ContentScale.Companion.d;
                        } else {
                            contentScale3 = contentScale;
                        }
                        if (i17 != 0) {
                            z15 = true;
                        } else {
                            z15 = z2;
                        }
                        if (i19 != 0) {
                            z16 = false;
                        } else {
                            z16 = z3;
                        }
                        if (i21 != 0) {
                            z17 = true;
                        } else {
                            z17 = z4;
                        }
                        if (i24 != 0) {
                            z18 = false;
                        } else {
                            z18 = z5;
                        }
                        if (i27 != 0) {
                            bool3 = null;
                        } else {
                            bool3 = bool;
                        }
                        if (i29 != 0) {
                            z19 = true;
                        } else {
                            z19 = z6;
                        }
                        if (i32 != 0) {
                            i46 = 0;
                        } else {
                            i46 = i2;
                        }
                        if (i34 != 0) {
                            function12 = null;
                        } else {
                            function12 = function2;
                        }
                        if (i36 != 0) {
                            function13 = null;
                        } else {
                            function13 = function3;
                        }
                        if (i38 != 0) {
                            function14 = null;
                        } else {
                            function14 = function0;
                        }
                        if (i39 != 0) {
                            function15 = null;
                        } else {
                            function15 = function1;
                        }
                        if (i40 != 0) {
                            function16 = null;
                        } else {
                            function16 = function4;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i42 != 0) {
                            objX14 = gapComposerH.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new fa0(9);
                                gapComposerH.q(objX14);
                            }
                            function17 = (Function0) objX14;
                        } else {
                            function17 = function5;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                            gapComposerH.L(1098171633);
                            Alignment.f8582a.getClass();
                            measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            function24 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function24);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                            Boolean bool7 = bool3;
                            TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                            gapComposer2 = gapComposerH;
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                            bool5 = bool7;
                            function15 = function15;
                            function20 = function16;
                            str11 = str8;
                            i48 = i46;
                            contentScale4 = contentScale3;
                            z39 = z14;
                            z33 = z15;
                            str12 = str9;
                            z31 = z16;
                            z32 = z17;
                            z34 = z18;
                            z36 = z19;
                            function22 = function12;
                            function23 = function13;
                            function19 = function14;
                            function18 = function17;
                        } else {
                            bool4 = bool3;
                            gapComposer2 = gapComposerH;
                            gapComposer2.L(1098674794);
                            context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                            mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                            objX = gapComposer2.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX);
                            }
                            mutableState = (MutableState) objX;
                            objX2 = gapComposer2.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    z41 = true;
                                } else {
                                    z41 = true;
                                }
                                objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                                gapComposer2.q(objX2);
                            }
                            mutableState2 = (MutableState) objX2;
                            objX3 = gapComposer2.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                cacheFactory = AppModule.f51474a;
                                if (cacheFactory != null) {
                                    objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                                } else {
                                    objX3 = null;
                                }
                                gapComposer2.q(objX3);
                            }
                            factory = (CacheDataSource.Factory) objX3;
                            objX4 = gapComposer2.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX4);
                            }
                            mutableState3 = (MutableState) objX4;
                            objX5 = gapComposer2.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                if (str9 == null) {
                                    z40 = true;
                                } else {
                                    z40 = true;
                                }
                                objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                                gapComposer2.q(objX5);
                            }
                            mutableState4 = (MutableState) objX5;
                            objX6 = gapComposer2.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX6);
                            }
                            mutableState5 = (MutableState) objX6;
                            boolean zY5 = gapComposer2.y(exoPlayer);
                            if ((i43 & 14) == 4) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            boolean z410 = zY5 | z20;
                            if ((29360128 & i41) == 8388608) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            boolean z411 = z410 | z21;
                            if ((i41 & 1879048192) == 536870912) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            boolean z412 = z411 | z22;
                            if ((i7 & 896) == 256) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            boolean z413 = z412 | z23;
                            if ((i7 & 7168) == 2048) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                            boolean zY6 = z413 | z24 | gapComposer2.y(factory);
                            if ((i7 & 1879048192) == 536870912) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            boolean z414 = zY6 | z25;
                            if ((i41 & 14) == 4) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            boolean z415 = z414 | z26;
                            if ((i7 & 234881024) == 67108864) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            boolean z416 = z415 | z27;
                            if ((i41 & 896) == 256) {
                                z28 = true;
                            } else {
                                z28 = false;
                            }
                            boolean z417 = z28 | z416;
                            if ((i41 & 112) == 32) {
                                z29 = true;
                            } else {
                                z29 = false;
                            }
                            z30 = z417 | z29;
                            objX7 = gapComposer2.x();
                            if (z30) {
                                Function0 function210 = function16;
                                String str15 = str8;
                                boolean z58 = z15;
                                boolean z59 = z16;
                                boolean z510 = z17;
                                boolean z511 = z18;
                                Function0 function211 = function14;
                                Function0 function212 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str15, factory, z59, z510, z58, bool4, z511, mutableState3, function212, mutableState5, function211, function210, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str15;
                                z31 = z59;
                                z32 = z510;
                                z33 = z58;
                                bool5 = bool4;
                                z34 = z511;
                                function18 = function212;
                                function19 = function211;
                                function20 = function210;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            } else {
                                Function0 function213 = function16;
                                String str16 = str8;
                                boolean z512 = z15;
                                boolean z513 = z16;
                                boolean z514 = z17;
                                boolean z515 = z18;
                                Function0 function214 = function14;
                                Function0 function215 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str16, factory, z513, z514, z512, bool4, z515, mutableState3, function215, mutableState5, function214, function213, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str16;
                                z31 = z513;
                                z32 = z514;
                                z33 = z512;
                                bool5 = bool4;
                                z34 = z515;
                                function18 = function215;
                                function19 = function214;
                                function20 = function213;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            }
                            EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                            if (bool5 == null) {
                                gapComposer2.L(1103314377);
                                gapComposer2.Z(false);
                                str11 = str11;
                            } else {
                                gapComposer2.L(1103314378);
                                zBooleanValue = bool5.booleanValue();
                                zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                                objX8 = gapComposer2.x();
                                if (zB) {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                } else {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                }
                                EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                                gapComposer2.Z(false);
                            }
                            objX9 = gapComposer2.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                final ExoPlayer exoPlayer5 = exoPlayer2;
                                final MutableState mutableState9 = mutableState6;
                                final boolean z516 = z32;
                                final boolean z517 = z34;
                                objX9 = new LifecycleEventObserver() { // from class: gb0
                                    @Override // androidx.lifecycle.LifecycleEventObserver
                                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                        int i52 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                        ExoPlayer exoPlayer6 = exoPlayer5;
                                        MutableState mutableState10 = mutableState;
                                        if (i52 == 1) {
                                            mutableState10.setValue(Boolean.valueOf(((Boolean) mutableState9.getF10755b()).booleanValue() ? exoPlayer6.isPlaying() : false));
                                            exoPlayer6.pause();
                                            return;
                                        }
                                        if (i52 != 2) {
                                            if (i52 != 3) {
                                                return;
                                            }
                                            exoPlayer6.release();
                                        } else {
                                            if (z516 || ((Boolean) mutableState10.getF10755b()).booleanValue()) {
                                                exoPlayer6.c();
                                            }
                                            if (z517) {
                                                exoPlayer6.pause();
                                            }
                                        }
                                    }
                                };
                                gapComposer2.q(objX9);
                            }
                            lifecycleEventObserver = (LifecycleEventObserver) objX9;
                            Object f10755b2 = mutableStateL.getF10755b();
                            zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                            objX10 = gapComposer2.x();
                            if (zK) {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            } else {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            }
                            EffectsKt.c(f10755b2, (Function1) objX10, gapComposer2);
                            if (f5 != null) {
                                modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                            } else {
                                modifierA = dTFunctionNameModifier;
                            }
                            Modifier modifierO2 = dTFunctionNameModifier.o(modifierA);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposer2.T);
                            persistentCompositionLocalMapU = gapComposer2.U();
                            modifierC = ComposedModifierKt.c(gapComposer2, modifierO2);
                            ComposeUiNode.b0.getClass();
                            function21 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposer2.B();
                            if (gapComposer2.S) {
                                gapComposer2.C(function21);
                            } else {
                                gapComposer2.o();
                            }
                            Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                            i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                            objX11 = gapComposer2.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX11);
                            }
                            mutableState7 = (MutableState) objX11;
                            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LvVideoPlayer");
                            if ((i41 & 234881024) == 67108864) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            zY = z35 | gapComposer2.y(exoPlayer2);
                            objX12 = gapComposer2.x();
                            if (zY) {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            }
                            boolean z518 = z19;
                            Modifier modifierD2 = ClickableKt.d(dTFunctionNameModifier3, z518, null, null, (Function0) objX12, 14);
                            z36 = z518;
                            if ((458752 & i7) == i11) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            boolean zY7 = z37 | gapComposer2.y(context);
                            if ((i41 & 57344) == 16384) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zD = zY7 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                            objX13 = gapComposer2.x();
                            if (zD) {
                                final ExoPlayer exoPlayer6 = exoPlayer2;
                                final int i52 = i46;
                                final boolean z519 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z519;
                                        Context context2 = context;
                                        MutableState mutableState10 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState10.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState10.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i52);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer6);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z519;
                                i48 = i52;
                                gapComposer2.q(objX13);
                            } else {
                                final ExoPlayer exoPlayer7 = exoPlayer2;
                                final int i53 = i46;
                                final boolean z5110 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z5110;
                                        Context context2 = context;
                                        MutableState mutableState10 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState10.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState10.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i53);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer7);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z5110;
                                i48 = i53;
                                gapComposer2.q(objX13);
                            }
                            AndroidView_androidKt.a((Function1) objX13, modifierD2, null, gapComposer2, 0, 4);
                            ContentScale contentScale6 = contentScale3;
                            String str17 = str9;
                            Function2 function216 = function12;
                            Function2 function217 = function13;
                            str12 = str17;
                            function22 = function216;
                            function23 = function217;
                            contentScale4 = contentScale6;
                            ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str17, function216, function217, contentScale6, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                        }
                        i45 = i48;
                        contentScale2 = contentScale4;
                        bool2 = bool5;
                        function6 = function22;
                        function7 = function23;
                        gapComposer = gapComposer2;
                        z11 = z33;
                        z9 = z31;
                        modifier3 = dTFunctionNameModifier;
                        z10 = z34;
                        function8 = function19;
                        function10 = function20;
                        f4 = f5;
                        z8 = z39;
                        str6 = str12;
                        z13 = z36;
                        function9 = function15;
                        z12 = z32;
                        function11 = function18;
                        str7 = str11;
                    } else {
                        gapComposerH.D();
                        z8 = z;
                        contentScale2 = contentScale;
                        z9 = z3;
                        z10 = z5;
                        bool2 = bool;
                        function6 = function2;
                        function7 = function3;
                        function8 = function0;
                        function9 = function1;
                        function10 = function4;
                        function11 = function5;
                        gapComposer = gapComposerH;
                        str6 = str5;
                        f4 = f3;
                        str7 = str4;
                        modifier3 = modifier2;
                        z11 = z2;
                        z12 = z4;
                        z13 = z6;
                        i45 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: ib0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                int iA3 = RecomposeScopeImplKt.a(i5);
                                LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i7 |= ImageMetadata.EDGE_MODE;
                i11 = 131072;
                i13 = i6 & 64;
                if (i13 != 0) {
                    i7 |= 1572864;
                    str5 = str3;
                } else {
                    str5 = str3;
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(str5)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i7 |= i14;
                    }
                }
                modifier2 = modifierE;
                i15 = i6 & 128;
                if (i15 != 0) {
                    i7 |= 12582912;
                } else if ((i3 & 12582912) == 0) {
                    if (gapComposerH.K(contentScale)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i7 |= i16;
                }
                i17 = i6 & 256;
                if (i17 != 0) {
                    i7 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                    i7 |= i18;
                }
                i19 = i6 & 512;
                if (i19 != 0) {
                    i7 |= 805306368;
                } else if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i20 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i20 = 268435456;
                    }
                    i7 |= i20;
                }
                i21 = i6 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.b(z4)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                i24 = i6 & 2048;
                if (i24 != 0) {
                    i22 |= 48;
                } else if ((i4 & 48) != 0) {
                    if (gapComposerH.b(z5)) {
                        i25 = 32;
                    } else {
                        i25 = 16;
                    }
                    i22 |= i25;
                }
                i26 = i22;
                i27 = i6 & 4096;
                if (i27 != 0) {
                    i28 = i26 | KyberEngine.KyberPolyBytes;
                } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                    i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
                } else {
                    i28 = i26;
                }
                i29 = i6 & 8192;
                if (i29 != 0) {
                    i31 = i28 | 3072;
                } else {
                    i30 = i28;
                    if ((i4 & 3072) == 0) {
                        i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                    } else {
                        i31 = i30;
                    }
                }
                i32 = i6 & 16384;
                if (i32 != 0) {
                    i33 = i31;
                    if ((i4 & 24576) == 0) {
                        i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                    }
                    i34 = i6 & 32768;
                    if (i34 != 0) {
                        i33 |= ImageMetadata.EDGE_MODE;
                    } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.y(function2)) {
                            i35 = i11;
                        } else {
                            i35 = 65536;
                        }
                        i33 |= i35;
                    }
                    i36 = i6 & 65536;
                    if (i36 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        if (gapComposerH.y(function3)) {
                            i37 = 1048576;
                        } else {
                            i37 = 524288;
                        }
                        i33 |= i37;
                    }
                    i38 = i6 & i11;
                    if (i38 != 0) {
                        i33 |= 12582912;
                    } else if ((i4 & 12582912) == 0) {
                        i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                    }
                    i39 = i6 & 262144;
                    if (i39 != 0) {
                        i33 |= 100663296;
                    } else if ((i4 & 100663296) == 0) {
                        i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                    }
                    i40 = i6 & 524288;
                    if (i40 != 0) {
                        i33 |= 805306368;
                    } else if ((i4 & 805306368) == 0) {
                        i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                    }
                    i41 = i33;
                    i42 = i6 & 1048576;
                    if (i42 != 0) {
                        i43 = 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function5)) {
                            i44 = 4;
                        } else {
                            i44 = 2;
                        }
                        i43 = i5 | i44;
                    } else {
                        i43 = i5;
                    }
                    if ((i7 & 306783379) != 306783378) {
                        z7 = true;
                    } else {
                        z7 = true;
                    }
                    if (gapComposerH.p(i7 & 1, z7)) {
                        if (i49 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i50 != 0) {
                            str8 = null;
                        } else {
                            str8 = str4;
                        }
                        if (i8 != 0) {
                            f5 = null;
                        } else {
                            f5 = f3;
                        }
                        if (i10 != 0) {
                            z14 = false;
                        } else {
                            z14 = z;
                        }
                        if (i13 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        if (i15 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale3 = ContentScale.Companion.d;
                        } else {
                            contentScale3 = contentScale;
                        }
                        if (i17 != 0) {
                            z15 = true;
                        } else {
                            z15 = z2;
                        }
                        if (i19 != 0) {
                            z16 = false;
                        } else {
                            z16 = z3;
                        }
                        if (i21 != 0) {
                            z17 = true;
                        } else {
                            z17 = z4;
                        }
                        if (i24 != 0) {
                            z18 = false;
                        } else {
                            z18 = z5;
                        }
                        if (i27 != 0) {
                            bool3 = null;
                        } else {
                            bool3 = bool;
                        }
                        if (i29 != 0) {
                            z19 = true;
                        } else {
                            z19 = z6;
                        }
                        if (i32 != 0) {
                            i46 = 0;
                        } else {
                            i46 = i2;
                        }
                        if (i34 != 0) {
                            function12 = null;
                        } else {
                            function12 = function2;
                        }
                        if (i36 != 0) {
                            function13 = null;
                        } else {
                            function13 = function3;
                        }
                        if (i38 != 0) {
                            function14 = null;
                        } else {
                            function14 = function0;
                        }
                        if (i39 != 0) {
                            function15 = null;
                        } else {
                            function15 = function1;
                        }
                        if (i40 != 0) {
                            function16 = null;
                        } else {
                            function16 = function4;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i42 != 0) {
                            objX14 = gapComposerH.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new fa0(9);
                                gapComposerH.q(objX14);
                            }
                            function17 = (Function0) objX14;
                        } else {
                            function17 = function5;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                            gapComposerH.L(1098171633);
                            Alignment.f8582a.getClass();
                            measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            function24 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function24);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                            Boolean bool8 = bool3;
                            TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                            gapComposer2 = gapComposerH;
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                            bool5 = bool8;
                            function15 = function15;
                            function20 = function16;
                            str11 = str8;
                            i48 = i46;
                            contentScale4 = contentScale3;
                            z39 = z14;
                            z33 = z15;
                            str12 = str9;
                            z31 = z16;
                            z32 = z17;
                            z34 = z18;
                            z36 = z19;
                            function22 = function12;
                            function23 = function13;
                            function19 = function14;
                            function18 = function17;
                        } else {
                            bool4 = bool3;
                            gapComposer2 = gapComposerH;
                            gapComposer2.L(1098674794);
                            context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                            mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                            objX = gapComposer2.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX);
                            }
                            mutableState = (MutableState) objX;
                            objX2 = gapComposer2.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    z41 = true;
                                } else {
                                    z41 = true;
                                }
                                objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                                gapComposer2.q(objX2);
                            }
                            mutableState2 = (MutableState) objX2;
                            objX3 = gapComposer2.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                cacheFactory = AppModule.f51474a;
                                if (cacheFactory != null) {
                                    objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                                } else {
                                    objX3 = null;
                                }
                                gapComposer2.q(objX3);
                            }
                            factory = (CacheDataSource.Factory) objX3;
                            objX4 = gapComposer2.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX4);
                            }
                            mutableState3 = (MutableState) objX4;
                            objX5 = gapComposer2.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                if (str9 == null) {
                                    z40 = true;
                                } else {
                                    z40 = true;
                                }
                                objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                                gapComposer2.q(objX5);
                            }
                            mutableState4 = (MutableState) objX5;
                            objX6 = gapComposer2.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX6);
                            }
                            mutableState5 = (MutableState) objX6;
                            boolean zY8 = gapComposer2.y(exoPlayer);
                            if ((i43 & 14) == 4) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            boolean z418 = zY8 | z20;
                            if ((29360128 & i41) == 8388608) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            boolean z419 = z418 | z21;
                            if ((i41 & 1879048192) == 536870912) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            boolean z4110 = z419 | z22;
                            if ((i7 & 896) == 256) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            boolean z4111 = z4110 | z23;
                            if ((i7 & 7168) == 2048) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                            boolean zY9 = z4111 | z24 | gapComposer2.y(factory);
                            if ((i7 & 1879048192) == 536870912) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            boolean z4112 = zY9 | z25;
                            if ((i41 & 14) == 4) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            boolean z4113 = z4112 | z26;
                            if ((i7 & 234881024) == 67108864) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            boolean z4114 = z4113 | z27;
                            if ((i41 & 896) == 256) {
                                z28 = true;
                            } else {
                                z28 = false;
                            }
                            boolean z4115 = z28 | z4114;
                            if ((i41 & 112) == 32) {
                                z29 = true;
                            } else {
                                z29 = false;
                            }
                            z30 = z4115 | z29;
                            objX7 = gapComposer2.x();
                            if (z30) {
                                Function0 function218 = function16;
                                String str18 = str8;
                                boolean z5111 = z15;
                                boolean z5112 = z16;
                                boolean z5113 = z17;
                                boolean z5114 = z18;
                                Function0 function219 = function14;
                                Function0 function2110 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str18, factory, z5112, z5113, z5111, bool4, z5114, mutableState3, function2110, mutableState5, function219, function218, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str18;
                                z31 = z5112;
                                z32 = z5113;
                                z33 = z5111;
                                bool5 = bool4;
                                z34 = z5114;
                                function18 = function2110;
                                function19 = function219;
                                function20 = function218;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            } else {
                                Function0 function2111 = function16;
                                String str19 = str8;
                                boolean z5115 = z15;
                                boolean z5116 = z16;
                                boolean z5117 = z17;
                                boolean z5118 = z18;
                                Function0 function2112 = function14;
                                Function0 function2113 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str19, factory, z5116, z5117, z5115, bool4, z5118, mutableState3, function2113, mutableState5, function2112, function2111, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str19;
                                z31 = z5116;
                                z32 = z5117;
                                z33 = z5115;
                                bool5 = bool4;
                                z34 = z5118;
                                function18 = function2113;
                                function19 = function2112;
                                function20 = function2111;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            }
                            EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                            if (bool5 == null) {
                                gapComposer2.L(1103314377);
                                gapComposer2.Z(false);
                                str11 = str11;
                            } else {
                                gapComposer2.L(1103314378);
                                zBooleanValue = bool5.booleanValue();
                                zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                                objX8 = gapComposer2.x();
                                if (zB) {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                } else {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                }
                                EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                                gapComposer2.Z(false);
                            }
                            objX9 = gapComposer2.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                final ExoPlayer exoPlayer8 = exoPlayer2;
                                final MutableState mutableState10 = mutableState6;
                                final boolean z5119 = z32;
                                final boolean z5120 = z34;
                                objX9 = new LifecycleEventObserver() { // from class: gb0
                                    @Override // androidx.lifecycle.LifecycleEventObserver
                                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                        int i54 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                        ExoPlayer exoPlayer9 = exoPlayer8;
                                        MutableState mutableState11 = mutableState;
                                        if (i54 == 1) {
                                            mutableState11.setValue(Boolean.valueOf(((Boolean) mutableState10.getF10755b()).booleanValue() ? exoPlayer9.isPlaying() : false));
                                            exoPlayer9.pause();
                                            return;
                                        }
                                        if (i54 != 2) {
                                            if (i54 != 3) {
                                                return;
                                            }
                                            exoPlayer9.release();
                                        } else {
                                            if (z5119 || ((Boolean) mutableState11.getF10755b()).booleanValue()) {
                                                exoPlayer9.c();
                                            }
                                            if (z5120) {
                                                exoPlayer9.pause();
                                            }
                                        }
                                    }
                                };
                                gapComposer2.q(objX9);
                            }
                            lifecycleEventObserver = (LifecycleEventObserver) objX9;
                            Object f10755b3 = mutableStateL.getF10755b();
                            zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                            objX10 = gapComposer2.x();
                            if (zK) {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            } else {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            }
                            EffectsKt.c(f10755b3, (Function1) objX10, gapComposer2);
                            if (f5 != null) {
                                modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                            } else {
                                modifierA = dTFunctionNameModifier;
                            }
                            Modifier modifierO3 = dTFunctionNameModifier.o(modifierA);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposer2.T);
                            persistentCompositionLocalMapU = gapComposer2.U();
                            modifierC = ComposedModifierKt.c(gapComposer2, modifierO3);
                            ComposeUiNode.b0.getClass();
                            function21 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposer2.B();
                            if (gapComposer2.S) {
                                gapComposer2.C(function21);
                            } else {
                                gapComposer2.o();
                            }
                            Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                            i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                            objX11 = gapComposer2.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX11);
                            }
                            mutableState7 = (MutableState) objX11;
                            DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LvVideoPlayer");
                            if ((i41 & 234881024) == 67108864) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            zY = z35 | gapComposer2.y(exoPlayer2);
                            objX12 = gapComposer2.x();
                            if (zY) {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            }
                            boolean z5121 = z19;
                            Modifier modifierD3 = ClickableKt.d(dTFunctionNameModifier4, z5121, null, null, (Function0) objX12, 14);
                            z36 = z5121;
                            if ((458752 & i7) == i11) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            boolean zY10 = z37 | gapComposer2.y(context);
                            if ((i41 & 57344) == 16384) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zD = zY10 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                            objX13 = gapComposer2.x();
                            if (zD) {
                                final ExoPlayer exoPlayer9 = exoPlayer2;
                                final int i54 = i46;
                                final boolean z51110 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z51110;
                                        Context context2 = context;
                                        MutableState mutableState11 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState11.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState11.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i54);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer9);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z51110;
                                i48 = i54;
                                gapComposer2.q(objX13);
                            } else {
                                final ExoPlayer exoPlayer10 = exoPlayer2;
                                final int i55 = i46;
                                final boolean z51111 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z51111;
                                        Context context2 = context;
                                        MutableState mutableState11 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState11.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState11.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i55);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer10);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z51111;
                                i48 = i55;
                                gapComposer2.q(objX13);
                            }
                            AndroidView_androidKt.a((Function1) objX13, modifierD3, null, gapComposer2, 0, 4);
                            ContentScale contentScale7 = contentScale3;
                            String str110 = str9;
                            Function2 function2114 = function12;
                            Function2 function2115 = function13;
                            str12 = str110;
                            function22 = function2114;
                            function23 = function2115;
                            contentScale4 = contentScale7;
                            ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str110, function2114, function2115, contentScale7, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                        }
                        i45 = i48;
                        contentScale2 = contentScale4;
                        bool2 = bool5;
                        function6 = function22;
                        function7 = function23;
                        gapComposer = gapComposer2;
                        z11 = z33;
                        z9 = z31;
                        modifier3 = dTFunctionNameModifier;
                        z10 = z34;
                        function8 = function19;
                        function10 = function20;
                        f4 = f5;
                        z8 = z39;
                        str6 = str12;
                        z13 = z36;
                        function9 = function15;
                        z12 = z32;
                        function11 = function18;
                        str7 = str11;
                    } else {
                        gapComposerH.D();
                        z8 = z;
                        contentScale2 = contentScale;
                        z9 = z3;
                        z10 = z5;
                        bool2 = bool;
                        function6 = function2;
                        function7 = function3;
                        function8 = function0;
                        function9 = function1;
                        function10 = function4;
                        function11 = function5;
                        gapComposer = gapComposerH;
                        str6 = str5;
                        f4 = f3;
                        str7 = str4;
                        modifier3 = modifier2;
                        z11 = z2;
                        z12 = z4;
                        z13 = z6;
                        i45 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: ib0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                int iA3 = RecomposeScopeImplKt.a(i5);
                                LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i33 = i31 | 24576;
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool9 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool9;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY11 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z4116 = zY11 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z4117 = z4116 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z4118 = z4117 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z4119 = z4118 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY12 = z4119 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z41110 = zY12 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z41111 = z41110 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z41112 = z41111 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z41113 = z28 | z41112;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z41113 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function2116 = function16;
                            String str111 = str8;
                            boolean z51112 = z15;
                            boolean z51113 = z16;
                            boolean z51114 = z17;
                            boolean z51115 = z18;
                            Function0 function2117 = function14;
                            Function0 function2118 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111, factory, z51113, z51114, z51112, bool4, z51115, mutableState3, function2118, mutableState5, function2117, function2116, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str111;
                            z31 = z51113;
                            z32 = z51114;
                            z33 = z51112;
                            bool5 = bool4;
                            z34 = z51115;
                            function18 = function2118;
                            function19 = function2117;
                            function20 = function2116;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function2119 = function16;
                            String str112 = str8;
                            boolean z51116 = z15;
                            boolean z51117 = z16;
                            boolean z51118 = z17;
                            boolean z51119 = z18;
                            Function0 function21110 = function14;
                            Function0 function21111 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str112, factory, z51117, z51118, z51116, bool4, z51119, mutableState3, function21111, mutableState5, function21110, function2119, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str112;
                            z31 = z51117;
                            z32 = z51118;
                            z33 = z51116;
                            bool5 = bool4;
                            z34 = z51119;
                            function18 = function21111;
                            function19 = function21110;
                            function20 = function2119;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer11 = exoPlayer2;
                            final MutableState mutableState11 = mutableState6;
                            final boolean z51120 = z32;
                            final boolean z5122 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i56 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer12 = exoPlayer11;
                                    MutableState mutableState12 = mutableState;
                                    if (i56 == 1) {
                                        mutableState12.setValue(Boolean.valueOf(((Boolean) mutableState11.getF10755b()).booleanValue() ? exoPlayer12.isPlaying() : false));
                                        exoPlayer12.pause();
                                        return;
                                    }
                                    if (i56 != 2) {
                                        if (i56 != 3) {
                                            return;
                                        }
                                        exoPlayer12.release();
                                    } else {
                                        if (z51120 || ((Boolean) mutableState12.getF10755b()).booleanValue()) {
                                            exoPlayer12.c();
                                        }
                                        if (z5122) {
                                            exoPlayer12.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b4 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b4, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO4 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO4);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z5123 = z19;
                        Modifier modifierD4 = ClickableKt.d(dTFunctionNameModifier5, z5123, null, null, (Function0) objX12, 14);
                        z36 = z5123;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY13 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY13 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer12 = exoPlayer2;
                            final int i56 = i46;
                            final boolean z511110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511110;
                                    Context context2 = context;
                                    MutableState mutableState12 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState12.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState12.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i56);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer12);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511110;
                            i48 = i56;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer13 = exoPlayer2;
                            final int i57 = i46;
                            final boolean z511111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111;
                                    Context context2 = context;
                                    MutableState mutableState12 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState12.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState12.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i57);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer13);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111;
                            i48 = i57;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD4, null, gapComposer2, 0, 4);
                        ContentScale contentScale8 = contentScale3;
                        String str113 = str9;
                        Function2 function21112 = function12;
                        Function2 function21113 = function13;
                        str12 = str113;
                        function22 = function21112;
                        function23 = function21113;
                        contentScale4 = contentScale8;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str113, function21112, function21113, contentScale8, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= 24576;
            f3 = f2;
            i10 = i6 & 32;
            if (i10 != 0) {
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i11 = 131072;
                    if (gapComposerH.b(z)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i7 |= i12;
                }
                i13 = i6 & 64;
                if (i13 != 0) {
                    i7 |= 1572864;
                    str5 = str3;
                } else {
                    str5 = str3;
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(str5)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i7 |= i14;
                    }
                }
                modifier2 = modifierE;
                i15 = i6 & 128;
                if (i15 != 0) {
                    i7 |= 12582912;
                } else if ((i3 & 12582912) == 0) {
                    if (gapComposerH.K(contentScale)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i7 |= i16;
                }
                i17 = i6 & 256;
                if (i17 != 0) {
                    i7 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                    i7 |= i18;
                }
                i19 = i6 & 512;
                if (i19 != 0) {
                    i7 |= 805306368;
                } else if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i20 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i20 = 268435456;
                    }
                    i7 |= i20;
                }
                i21 = i6 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.b(z4)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                i24 = i6 & 2048;
                if (i24 != 0) {
                    i22 |= 48;
                } else if ((i4 & 48) != 0) {
                    if (gapComposerH.b(z5)) {
                        i25 = 32;
                    } else {
                        i25 = 16;
                    }
                    i22 |= i25;
                }
                i26 = i22;
                i27 = i6 & 4096;
                if (i27 != 0) {
                    i28 = i26 | KyberEngine.KyberPolyBytes;
                } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                    i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
                } else {
                    i28 = i26;
                }
                i29 = i6 & 8192;
                if (i29 != 0) {
                    i31 = i28 | 3072;
                } else {
                    i30 = i28;
                    if ((i4 & 3072) == 0) {
                        i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                    } else {
                        i31 = i30;
                    }
                }
                i32 = i6 & 16384;
                if (i32 != 0) {
                    i33 = i31;
                    if ((i4 & 24576) == 0) {
                        i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                    }
                    i34 = i6 & 32768;
                    if (i34 != 0) {
                        i33 |= ImageMetadata.EDGE_MODE;
                    } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.y(function2)) {
                            i35 = i11;
                        } else {
                            i35 = 65536;
                        }
                        i33 |= i35;
                    }
                    i36 = i6 & 65536;
                    if (i36 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        if (gapComposerH.y(function3)) {
                            i37 = 1048576;
                        } else {
                            i37 = 524288;
                        }
                        i33 |= i37;
                    }
                    i38 = i6 & i11;
                    if (i38 != 0) {
                        i33 |= 12582912;
                    } else if ((i4 & 12582912) == 0) {
                        i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                    }
                    i39 = i6 & 262144;
                    if (i39 != 0) {
                        i33 |= 100663296;
                    } else if ((i4 & 100663296) == 0) {
                        i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                    }
                    i40 = i6 & 524288;
                    if (i40 != 0) {
                        i33 |= 805306368;
                    } else if ((i4 & 805306368) == 0) {
                        i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                    }
                    i41 = i33;
                    i42 = i6 & 1048576;
                    if (i42 != 0) {
                        i43 = 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function5)) {
                            i44 = 4;
                        } else {
                            i44 = 2;
                        }
                        i43 = i5 | i44;
                    } else {
                        i43 = i5;
                    }
                    if ((i7 & 306783379) != 306783378) {
                        z7 = true;
                    } else {
                        z7 = true;
                    }
                    if (gapComposerH.p(i7 & 1, z7)) {
                        if (i49 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i50 != 0) {
                            str8 = null;
                        } else {
                            str8 = str4;
                        }
                        if (i8 != 0) {
                            f5 = null;
                        } else {
                            f5 = f3;
                        }
                        if (i10 != 0) {
                            z14 = false;
                        } else {
                            z14 = z;
                        }
                        if (i13 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        if (i15 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale3 = ContentScale.Companion.d;
                        } else {
                            contentScale3 = contentScale;
                        }
                        if (i17 != 0) {
                            z15 = true;
                        } else {
                            z15 = z2;
                        }
                        if (i19 != 0) {
                            z16 = false;
                        } else {
                            z16 = z3;
                        }
                        if (i21 != 0) {
                            z17 = true;
                        } else {
                            z17 = z4;
                        }
                        if (i24 != 0) {
                            z18 = false;
                        } else {
                            z18 = z5;
                        }
                        if (i27 != 0) {
                            bool3 = null;
                        } else {
                            bool3 = bool;
                        }
                        if (i29 != 0) {
                            z19 = true;
                        } else {
                            z19 = z6;
                        }
                        if (i32 != 0) {
                            i46 = 0;
                        } else {
                            i46 = i2;
                        }
                        if (i34 != 0) {
                            function12 = null;
                        } else {
                            function12 = function2;
                        }
                        if (i36 != 0) {
                            function13 = null;
                        } else {
                            function13 = function3;
                        }
                        if (i38 != 0) {
                            function14 = null;
                        } else {
                            function14 = function0;
                        }
                        if (i39 != 0) {
                            function15 = null;
                        } else {
                            function15 = function1;
                        }
                        if (i40 != 0) {
                            function16 = null;
                        } else {
                            function16 = function4;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i42 != 0) {
                            objX14 = gapComposerH.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new fa0(9);
                                gapComposerH.q(objX14);
                            }
                            function17 = (Function0) objX14;
                        } else {
                            function17 = function5;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                            gapComposerH.L(1098171633);
                            Alignment.f8582a.getClass();
                            measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            function24 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function24);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                            Boolean bool10 = bool3;
                            TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                            gapComposer2 = gapComposerH;
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                            bool5 = bool10;
                            function15 = function15;
                            function20 = function16;
                            str11 = str8;
                            i48 = i46;
                            contentScale4 = contentScale3;
                            z39 = z14;
                            z33 = z15;
                            str12 = str9;
                            z31 = z16;
                            z32 = z17;
                            z34 = z18;
                            z36 = z19;
                            function22 = function12;
                            function23 = function13;
                            function19 = function14;
                            function18 = function17;
                        } else {
                            bool4 = bool3;
                            gapComposer2 = gapComposerH;
                            gapComposer2.L(1098674794);
                            context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                            mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                            objX = gapComposer2.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX);
                            }
                            mutableState = (MutableState) objX;
                            objX2 = gapComposer2.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    z41 = true;
                                } else {
                                    z41 = true;
                                }
                                objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                                gapComposer2.q(objX2);
                            }
                            mutableState2 = (MutableState) objX2;
                            objX3 = gapComposer2.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                cacheFactory = AppModule.f51474a;
                                if (cacheFactory != null) {
                                    objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                                } else {
                                    objX3 = null;
                                }
                                gapComposer2.q(objX3);
                            }
                            factory = (CacheDataSource.Factory) objX3;
                            objX4 = gapComposer2.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX4);
                            }
                            mutableState3 = (MutableState) objX4;
                            objX5 = gapComposer2.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                if (str9 == null) {
                                    z40 = true;
                                } else {
                                    z40 = true;
                                }
                                objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                                gapComposer2.q(objX5);
                            }
                            mutableState4 = (MutableState) objX5;
                            objX6 = gapComposer2.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX6);
                            }
                            mutableState5 = (MutableState) objX6;
                            boolean zY14 = gapComposer2.y(exoPlayer);
                            if ((i43 & 14) == 4) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            boolean z41114 = zY14 | z20;
                            if ((29360128 & i41) == 8388608) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            boolean z41115 = z41114 | z21;
                            if ((i41 & 1879048192) == 536870912) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            boolean z41116 = z41115 | z22;
                            if ((i7 & 896) == 256) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            boolean z41117 = z41116 | z23;
                            if ((i7 & 7168) == 2048) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                            boolean zY15 = z41117 | z24 | gapComposer2.y(factory);
                            if ((i7 & 1879048192) == 536870912) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            boolean z41118 = zY15 | z25;
                            if ((i41 & 14) == 4) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            boolean z41119 = z41118 | z26;
                            if ((i7 & 234881024) == 67108864) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            boolean z411110 = z41119 | z27;
                            if ((i41 & 896) == 256) {
                                z28 = true;
                            } else {
                                z28 = false;
                            }
                            boolean z411111 = z28 | z411110;
                            if ((i41 & 112) == 32) {
                                z29 = true;
                            } else {
                                z29 = false;
                            }
                            z30 = z411111 | z29;
                            objX7 = gapComposer2.x();
                            if (z30) {
                                Function0 function21114 = function16;
                                String str114 = str8;
                                boolean z511112 = z15;
                                boolean z511113 = z16;
                                boolean z511114 = z17;
                                boolean z511115 = z18;
                                Function0 function21115 = function14;
                                Function0 function21116 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str114, factory, z511113, z511114, z511112, bool4, z511115, mutableState3, function21116, mutableState5, function21115, function21114, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str114;
                                z31 = z511113;
                                z32 = z511114;
                                z33 = z511112;
                                bool5 = bool4;
                                z34 = z511115;
                                function18 = function21116;
                                function19 = function21115;
                                function20 = function21114;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            } else {
                                Function0 function21117 = function16;
                                String str115 = str8;
                                boolean z511116 = z15;
                                boolean z511117 = z16;
                                boolean z511118 = z17;
                                boolean z511119 = z18;
                                Function0 function21118 = function14;
                                Function0 function21119 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str115, factory, z511117, z511118, z511116, bool4, z511119, mutableState3, function21119, mutableState5, function21118, function21117, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str115;
                                z31 = z511117;
                                z32 = z511118;
                                z33 = z511116;
                                bool5 = bool4;
                                z34 = z511119;
                                function18 = function21119;
                                function19 = function21118;
                                function20 = function21117;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            }
                            EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                            if (bool5 == null) {
                                gapComposer2.L(1103314377);
                                gapComposer2.Z(false);
                                str11 = str11;
                            } else {
                                gapComposer2.L(1103314378);
                                zBooleanValue = bool5.booleanValue();
                                zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                                objX8 = gapComposer2.x();
                                if (zB) {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                } else {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                }
                                EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                                gapComposer2.Z(false);
                            }
                            objX9 = gapComposer2.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                final ExoPlayer exoPlayer14 = exoPlayer2;
                                final MutableState mutableState12 = mutableState6;
                                final boolean z51121 = z32;
                                final boolean z5124 = z34;
                                objX9 = new LifecycleEventObserver() { // from class: gb0
                                    @Override // androidx.lifecycle.LifecycleEventObserver
                                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                        int i58 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                        ExoPlayer exoPlayer15 = exoPlayer14;
                                        MutableState mutableState13 = mutableState;
                                        if (i58 == 1) {
                                            mutableState13.setValue(Boolean.valueOf(((Boolean) mutableState12.getF10755b()).booleanValue() ? exoPlayer15.isPlaying() : false));
                                            exoPlayer15.pause();
                                            return;
                                        }
                                        if (i58 != 2) {
                                            if (i58 != 3) {
                                                return;
                                            }
                                            exoPlayer15.release();
                                        } else {
                                            if (z51121 || ((Boolean) mutableState13.getF10755b()).booleanValue()) {
                                                exoPlayer15.c();
                                            }
                                            if (z5124) {
                                                exoPlayer15.pause();
                                            }
                                        }
                                    }
                                };
                                gapComposer2.q(objX9);
                            }
                            lifecycleEventObserver = (LifecycleEventObserver) objX9;
                            Object f10755b5 = mutableStateL.getF10755b();
                            zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                            objX10 = gapComposer2.x();
                            if (zK) {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            } else {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            }
                            EffectsKt.c(f10755b5, (Function1) objX10, gapComposer2);
                            if (f5 != null) {
                                modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                            } else {
                                modifierA = dTFunctionNameModifier;
                            }
                            Modifier modifierO5 = dTFunctionNameModifier.o(modifierA);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposer2.T);
                            persistentCompositionLocalMapU = gapComposer2.U();
                            modifierC = ComposedModifierKt.c(gapComposer2, modifierO5);
                            ComposeUiNode.b0.getClass();
                            function21 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposer2.B();
                            if (gapComposer2.S) {
                                gapComposer2.C(function21);
                            } else {
                                gapComposer2.o();
                            }
                            Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                            i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                            objX11 = gapComposer2.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX11);
                            }
                            mutableState7 = (MutableState) objX11;
                            DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LvVideoPlayer");
                            if ((i41 & 234881024) == 67108864) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            zY = z35 | gapComposer2.y(exoPlayer2);
                            objX12 = gapComposer2.x();
                            if (zY) {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            }
                            boolean z5125 = z19;
                            Modifier modifierD5 = ClickableKt.d(dTFunctionNameModifier6, z5125, null, null, (Function0) objX12, 14);
                            z36 = z5125;
                            if ((458752 & i7) == i11) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            boolean zY16 = z37 | gapComposer2.y(context);
                            if ((i41 & 57344) == 16384) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zD = zY16 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                            objX13 = gapComposer2.x();
                            if (zD) {
                                final ExoPlayer exoPlayer15 = exoPlayer2;
                                final int i58 = i46;
                                final boolean z5111110 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z5111110;
                                        Context context2 = context;
                                        MutableState mutableState13 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState13.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState13.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i58);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer15);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z5111110;
                                i48 = i58;
                                gapComposer2.q(objX13);
                            } else {
                                final ExoPlayer exoPlayer16 = exoPlayer2;
                                final int i59 = i46;
                                final boolean z5111111 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z5111111;
                                        Context context2 = context;
                                        MutableState mutableState13 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState13.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState13.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i59);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer16);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z5111111;
                                i48 = i59;
                                gapComposer2.q(objX13);
                            }
                            AndroidView_androidKt.a((Function1) objX13, modifierD5, null, gapComposer2, 0, 4);
                            ContentScale contentScale9 = contentScale3;
                            String str116 = str9;
                            Function2 function211110 = function12;
                            Function2 function211111 = function13;
                            str12 = str116;
                            function22 = function211110;
                            function23 = function211111;
                            contentScale4 = contentScale9;
                            ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str116, function211110, function211111, contentScale9, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                        }
                        i45 = i48;
                        contentScale2 = contentScale4;
                        bool2 = bool5;
                        function6 = function22;
                        function7 = function23;
                        gapComposer = gapComposer2;
                        z11 = z33;
                        z9 = z31;
                        modifier3 = dTFunctionNameModifier;
                        z10 = z34;
                        function8 = function19;
                        function10 = function20;
                        f4 = f5;
                        z8 = z39;
                        str6 = str12;
                        z13 = z36;
                        function9 = function15;
                        z12 = z32;
                        function11 = function18;
                        str7 = str11;
                    } else {
                        gapComposerH.D();
                        z8 = z;
                        contentScale2 = contentScale;
                        z9 = z3;
                        z10 = z5;
                        bool2 = bool;
                        function6 = function2;
                        function7 = function3;
                        function8 = function0;
                        function9 = function1;
                        function10 = function4;
                        function11 = function5;
                        gapComposer = gapComposerH;
                        str6 = str5;
                        f4 = f3;
                        str7 = str4;
                        modifier3 = modifier2;
                        z11 = z2;
                        z12 = z4;
                        z13 = z6;
                        i45 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: ib0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                int iA3 = RecomposeScopeImplKt.a(i5);
                                LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i33 = i31 | 24576;
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool11 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool11;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY17 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z411112 = zY17 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z411113 = z411112 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z411114 = z411113 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z411115 = z411114 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY18 = z411115 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z411116 = zY18 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z411117 = z411116 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z411118 = z411117 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z411119 = z28 | z411118;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z411119 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function211112 = function16;
                            String str117 = str8;
                            boolean z5111112 = z15;
                            boolean z5111113 = z16;
                            boolean z5111114 = z17;
                            boolean z5111115 = z18;
                            Function0 function211113 = function14;
                            Function0 function211114 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str117, factory, z5111113, z5111114, z5111112, bool4, z5111115, mutableState3, function211114, mutableState5, function211113, function211112, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str117;
                            z31 = z5111113;
                            z32 = z5111114;
                            z33 = z5111112;
                            bool5 = bool4;
                            z34 = z5111115;
                            function18 = function211114;
                            function19 = function211113;
                            function20 = function211112;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function211115 = function16;
                            String str118 = str8;
                            boolean z5111116 = z15;
                            boolean z5111117 = z16;
                            boolean z5111118 = z17;
                            boolean z5111119 = z18;
                            Function0 function211116 = function14;
                            Function0 function211117 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str118, factory, z5111117, z5111118, z5111116, bool4, z5111119, mutableState3, function211117, mutableState5, function211116, function211115, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str118;
                            z31 = z5111117;
                            z32 = z5111118;
                            z33 = z5111116;
                            bool5 = bool4;
                            z34 = z5111119;
                            function18 = function211117;
                            function19 = function211116;
                            function20 = function211115;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer17 = exoPlayer2;
                            final MutableState mutableState13 = mutableState6;
                            final boolean z51122 = z32;
                            final boolean z5126 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i510 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer18 = exoPlayer17;
                                    MutableState mutableState14 = mutableState;
                                    if (i510 == 1) {
                                        mutableState14.setValue(Boolean.valueOf(((Boolean) mutableState13.getF10755b()).booleanValue() ? exoPlayer18.isPlaying() : false));
                                        exoPlayer18.pause();
                                        return;
                                    }
                                    if (i510 != 2) {
                                        if (i510 != 3) {
                                            return;
                                        }
                                        exoPlayer18.release();
                                    } else {
                                        if (z51122 || ((Boolean) mutableState14.getF10755b()).booleanValue()) {
                                            exoPlayer18.c();
                                        }
                                        if (z5126) {
                                            exoPlayer18.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b6 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b6, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO6 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO6);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z5127 = z19;
                        Modifier modifierD6 = ClickableKt.d(dTFunctionNameModifier7, z5127, null, null, (Function0) objX12, 14);
                        z36 = z5127;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY19 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY19 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer18 = exoPlayer2;
                            final int i510 = i46;
                            final boolean z51111110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z51111110;
                                    Context context2 = context;
                                    MutableState mutableState14 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState14.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState14.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i510);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer18);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z51111110;
                            i48 = i510;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer19 = exoPlayer2;
                            final int i511 = i46;
                            final boolean z51111111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z51111111;
                                    Context context2 = context;
                                    MutableState mutableState14 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState14.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState14.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i511);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer19);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z51111111;
                            i48 = i511;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD6, null, gapComposer2, 0, 4);
                        ContentScale contentScale10 = contentScale3;
                        String str119 = str9;
                        Function2 function211118 = function12;
                        Function2 function211119 = function13;
                        str12 = str119;
                        function22 = function211118;
                        function23 = function211119;
                        contentScale4 = contentScale10;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str119, function211118, function211119, contentScale10, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= ImageMetadata.EDGE_MODE;
            i11 = 131072;
            i13 = i6 & 64;
            if (i13 != 0) {
                i7 |= 1572864;
                str5 = str3;
            } else {
                str5 = str3;
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(str5)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i7 |= i14;
                }
            }
            modifier2 = modifierE;
            i15 = i6 & 128;
            if (i15 != 0) {
                i7 |= 12582912;
            } else if ((i3 & 12582912) == 0) {
                if (gapComposerH.K(contentScale)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i7 |= i16;
            }
            i17 = i6 & 256;
            if (i17 != 0) {
                i7 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (gapComposerH.b(z2)) {
                    i18 = 67108864;
                } else {
                    i18 = 33554432;
                }
                i7 |= i18;
            }
            i19 = i6 & 512;
            if (i19 != 0) {
                i7 |= 805306368;
            } else if ((i3 & 805306368) == 0) {
                if (gapComposerH.b(z3)) {
                    i20 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i20 = 268435456;
                }
                i7 |= i20;
            }
            i21 = i6 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.b(z4)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            i24 = i6 & 2048;
            if (i24 != 0) {
                i22 |= 48;
            } else if ((i4 & 48) != 0) {
                if (gapComposerH.b(z5)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i22 |= i25;
            }
            i26 = i22;
            i27 = i6 & 4096;
            if (i27 != 0) {
                i28 = i26 | KyberEngine.KyberPolyBytes;
            } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
            } else {
                i28 = i26;
            }
            i29 = i6 & 8192;
            if (i29 != 0) {
                i31 = i28 | 3072;
            } else {
                i30 = i28;
                if ((i4 & 3072) == 0) {
                    i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                } else {
                    i31 = i30;
                }
            }
            i32 = i6 & 16384;
            if (i32 != 0) {
                i33 = i31;
                if ((i4 & 24576) == 0) {
                    i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                }
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool12 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool12;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY110 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z4111110 = zY110 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z4111111 = z4111110 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z4111112 = z4111111 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z4111113 = z4111112 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY111 = z4111113 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z4111114 = zY111 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z4111115 = z4111114 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z4111116 = z4111115 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z4111117 = z28 | z4111116;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z4111117 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function2111110 = function16;
                            String str1110 = str8;
                            boolean z51111112 = z15;
                            boolean z51111113 = z16;
                            boolean z51111114 = z17;
                            boolean z51111115 = z18;
                            Function0 function2111111 = function14;
                            Function0 function2111112 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1110, factory, z51111113, z51111114, z51111112, bool4, z51111115, mutableState3, function2111112, mutableState5, function2111111, function2111110, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str1110;
                            z31 = z51111113;
                            z32 = z51111114;
                            z33 = z51111112;
                            bool5 = bool4;
                            z34 = z51111115;
                            function18 = function2111112;
                            function19 = function2111111;
                            function20 = function2111110;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function2111113 = function16;
                            String str1111 = str8;
                            boolean z51111116 = z15;
                            boolean z51111117 = z16;
                            boolean z51111118 = z17;
                            boolean z51111119 = z18;
                            Function0 function2111114 = function14;
                            Function0 function2111115 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1111, factory, z51111117, z51111118, z51111116, bool4, z51111119, mutableState3, function2111115, mutableState5, function2111114, function2111113, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str1111;
                            z31 = z51111117;
                            z32 = z51111118;
                            z33 = z51111116;
                            bool5 = bool4;
                            z34 = z51111119;
                            function18 = function2111115;
                            function19 = function2111114;
                            function20 = function2111113;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer110 = exoPlayer2;
                            final MutableState mutableState14 = mutableState6;
                            final boolean z51123 = z32;
                            final boolean z5128 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i512 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer111 = exoPlayer110;
                                    MutableState mutableState15 = mutableState;
                                    if (i512 == 1) {
                                        mutableState15.setValue(Boolean.valueOf(((Boolean) mutableState14.getF10755b()).booleanValue() ? exoPlayer111.isPlaying() : false));
                                        exoPlayer111.pause();
                                        return;
                                    }
                                    if (i512 != 2) {
                                        if (i512 != 3) {
                                            return;
                                        }
                                        exoPlayer111.release();
                                    } else {
                                        if (z51123 || ((Boolean) mutableState15.getF10755b()).booleanValue()) {
                                            exoPlayer111.c();
                                        }
                                        if (z5128) {
                                            exoPlayer111.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b7 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b7, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO7 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO7);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z5129 = z19;
                        Modifier modifierD7 = ClickableKt.d(dTFunctionNameModifier8, z5129, null, null, (Function0) objX12, 14);
                        z36 = z5129;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY112 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY112 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer111 = exoPlayer2;
                            final int i512 = i46;
                            final boolean z511111110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111110;
                                    Context context2 = context;
                                    MutableState mutableState15 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState15.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState15.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i512);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer111);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111110;
                            i48 = i512;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer112 = exoPlayer2;
                            final int i513 = i46;
                            final boolean z511111111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111111;
                                    Context context2 = context;
                                    MutableState mutableState15 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState15.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState15.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i513);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer112);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111111;
                            i48 = i513;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD7, null, gapComposer2, 0, 4);
                        ContentScale contentScale11 = contentScale3;
                        String str1112 = str9;
                        Function2 function2111116 = function12;
                        Function2 function2111117 = function13;
                        str12 = str1112;
                        function22 = function2111116;
                        function23 = function2111117;
                        contentScale4 = contentScale11;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str1112, function2111116, function2111117, contentScale11, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i33 = i31 | 24576;
            i34 = i6 & 32768;
            if (i34 != 0) {
                i33 |= ImageMetadata.EDGE_MODE;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function2)) {
                    i35 = i11;
                } else {
                    i35 = 65536;
                }
                i33 |= i35;
            }
            i36 = i6 & 65536;
            if (i36 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                if (gapComposerH.y(function3)) {
                    i37 = 1048576;
                } else {
                    i37 = 524288;
                }
                i33 |= i37;
            }
            i38 = i6 & i11;
            if (i38 != 0) {
                i33 |= 12582912;
            } else if ((i4 & 12582912) == 0) {
                i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
            }
            i39 = i6 & 262144;
            if (i39 != 0) {
                i33 |= 100663296;
            } else if ((i4 & 100663296) == 0) {
                i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
            }
            i40 = i6 & 524288;
            if (i40 != 0) {
                i33 |= 805306368;
            } else if ((i4 & 805306368) == 0) {
                i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
            i41 = i33;
            i42 = i6 & 1048576;
            if (i42 != 0) {
                i43 = 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function5)) {
                    i44 = 4;
                } else {
                    i44 = 2;
                }
                i43 = i5 | i44;
            } else {
                i43 = i5;
            }
            if ((i7 & 306783379) != 306783378) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (gapComposerH.p(i7 & 1, z7)) {
                if (i49 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i50 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i8 != 0) {
                    f5 = null;
                } else {
                    f5 = f3;
                }
                if (i10 != 0) {
                    z14 = false;
                } else {
                    z14 = z;
                }
                if (i13 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i15 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale3 = ContentScale.Companion.d;
                } else {
                    contentScale3 = contentScale;
                }
                if (i17 != 0) {
                    z15 = true;
                } else {
                    z15 = z2;
                }
                if (i19 != 0) {
                    z16 = false;
                } else {
                    z16 = z3;
                }
                if (i21 != 0) {
                    z17 = true;
                } else {
                    z17 = z4;
                }
                if (i24 != 0) {
                    z18 = false;
                } else {
                    z18 = z5;
                }
                if (i27 != 0) {
                    bool3 = null;
                } else {
                    bool3 = bool;
                }
                if (i29 != 0) {
                    z19 = true;
                } else {
                    z19 = z6;
                }
                if (i32 != 0) {
                    i46 = 0;
                } else {
                    i46 = i2;
                }
                if (i34 != 0) {
                    function12 = null;
                } else {
                    function12 = function2;
                }
                if (i36 != 0) {
                    function13 = null;
                } else {
                    function13 = function3;
                }
                if (i38 != 0) {
                    function14 = null;
                } else {
                    function14 = function0;
                }
                if (i39 != 0) {
                    function15 = null;
                } else {
                    function15 = function1;
                }
                if (i40 != 0) {
                    function16 = null;
                } else {
                    function16 = function4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i42 != 0) {
                    objX14 = gapComposerH.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new fa0(9);
                        gapComposerH.q(objX14);
                    }
                    function17 = (Function0) objX14;
                } else {
                    function17 = function5;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                    gapComposerH.L(1098171633);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    function24 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function24);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                    Boolean bool13 = bool3;
                    TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                    bool5 = bool13;
                    function15 = function15;
                    function20 = function16;
                    str11 = str8;
                    i48 = i46;
                    contentScale4 = contentScale3;
                    z39 = z14;
                    z33 = z15;
                    str12 = str9;
                    z31 = z16;
                    z32 = z17;
                    z34 = z18;
                    z36 = z19;
                    function22 = function12;
                    function23 = function13;
                    function19 = function14;
                    function18 = function17;
                } else {
                    bool4 = bool3;
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(1098674794);
                    context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                    mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                    objX = gapComposer2.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    objX2 = gapComposer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            z41 = true;
                        } else {
                            z41 = true;
                        }
                        objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                        gapComposer2.q(objX2);
                    }
                    mutableState2 = (MutableState) objX2;
                    objX3 = gapComposer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        cacheFactory = AppModule.f51474a;
                        if (cacheFactory != null) {
                            objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                        } else {
                            objX3 = null;
                        }
                        gapComposer2.q(objX3);
                    }
                    factory = (CacheDataSource.Factory) objX3;
                    objX4 = gapComposer2.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX4);
                    }
                    mutableState3 = (MutableState) objX4;
                    objX5 = gapComposer2.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        if (str9 == null) {
                            z40 = true;
                        } else {
                            z40 = true;
                        }
                        objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                        gapComposer2.q(objX5);
                    }
                    mutableState4 = (MutableState) objX5;
                    objX6 = gapComposer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX6);
                    }
                    mutableState5 = (MutableState) objX6;
                    boolean zY113 = gapComposer2.y(exoPlayer);
                    if ((i43 & 14) == 4) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean z4111118 = zY113 | z20;
                    if ((29360128 & i41) == 8388608) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    boolean z4111119 = z4111118 | z21;
                    if ((i41 & 1879048192) == 536870912) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    boolean z41111110 = z4111119 | z22;
                    if ((i7 & 896) == 256) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    boolean z41111111 = z41111110 | z23;
                    if ((i7 & 7168) == 2048) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean zY114 = z41111111 | z24 | gapComposer2.y(factory);
                    if ((i7 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    boolean z41111112 = zY114 | z25;
                    if ((i41 & 14) == 4) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean z41111113 = z41111112 | z26;
                    if ((i7 & 234881024) == 67108864) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    boolean z41111114 = z41111113 | z27;
                    if ((i41 & 896) == 256) {
                        z28 = true;
                    } else {
                        z28 = false;
                    }
                    boolean z41111115 = z28 | z41111114;
                    if ((i41 & 112) == 32) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z41111115 | z29;
                    objX7 = gapComposer2.x();
                    if (z30) {
                        Function0 function2111118 = function16;
                        String str1113 = str8;
                        boolean z511111112 = z15;
                        boolean z511111113 = z16;
                        boolean z511111114 = z17;
                        boolean z511111115 = z18;
                        Function0 function2111119 = function14;
                        Function0 function21111110 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1113, factory, z511111113, z511111114, z511111112, bool4, z511111115, mutableState3, function21111110, mutableState5, function2111119, function2111118, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str1113;
                        z31 = z511111113;
                        z32 = z511111114;
                        z33 = z511111112;
                        bool5 = bool4;
                        z34 = z511111115;
                        function18 = function21111110;
                        function19 = function2111119;
                        function20 = function2111118;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    } else {
                        Function0 function21111111 = function16;
                        String str1114 = str8;
                        boolean z511111116 = z15;
                        boolean z511111117 = z16;
                        boolean z511111118 = z17;
                        boolean z511111119 = z18;
                        Function0 function21111112 = function14;
                        Function0 function21111113 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1114, factory, z511111117, z511111118, z511111116, bool4, z511111119, mutableState3, function21111113, mutableState5, function21111112, function21111111, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str1114;
                        z31 = z511111117;
                        z32 = z511111118;
                        z33 = z511111116;
                        bool5 = bool4;
                        z34 = z511111119;
                        function18 = function21111113;
                        function19 = function21111112;
                        function20 = function21111111;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    }
                    EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                    if (bool5 == null) {
                        gapComposer2.L(1103314377);
                        gapComposer2.Z(false);
                        str11 = str11;
                    } else {
                        gapComposer2.L(1103314378);
                        zBooleanValue = bool5.booleanValue();
                        zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                        objX8 = gapComposer2.x();
                        if (zB) {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        } else {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        }
                        EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                        gapComposer2.Z(false);
                    }
                    objX9 = gapComposer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        final ExoPlayer exoPlayer113 = exoPlayer2;
                        final MutableState mutableState15 = mutableState6;
                        final boolean z51124 = z32;
                        final boolean z51210 = z34;
                        objX9 = new LifecycleEventObserver() { // from class: gb0
                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                int i514 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                ExoPlayer exoPlayer114 = exoPlayer113;
                                MutableState mutableState16 = mutableState;
                                if (i514 == 1) {
                                    mutableState16.setValue(Boolean.valueOf(((Boolean) mutableState15.getF10755b()).booleanValue() ? exoPlayer114.isPlaying() : false));
                                    exoPlayer114.pause();
                                    return;
                                }
                                if (i514 != 2) {
                                    if (i514 != 3) {
                                        return;
                                    }
                                    exoPlayer114.release();
                                } else {
                                    if (z51124 || ((Boolean) mutableState16.getF10755b()).booleanValue()) {
                                        exoPlayer114.c();
                                    }
                                    if (z51210) {
                                        exoPlayer114.pause();
                                    }
                                }
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) objX9;
                    Object f10755b8 = mutableStateL.getF10755b();
                    zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                    objX10 = gapComposer2.x();
                    if (zK) {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    } else {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    }
                    EffectsKt.c(f10755b8, (Function1) objX10, gapComposer2);
                    if (f5 != null) {
                        modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                    } else {
                        modifierA = dTFunctionNameModifier;
                    }
                    Modifier modifierO8 = dTFunctionNameModifier.o(modifierA);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierO8);
                    ComposeUiNode.b0.getClass();
                    function21 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function21);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                    i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                    objX11 = gapComposer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX11);
                    }
                    mutableState7 = (MutableState) objX11;
                    DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("LvVideoPlayer");
                    if ((i41 & 234881024) == 67108864) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    zY = z35 | gapComposer2.y(exoPlayer2);
                    objX12 = gapComposer2.x();
                    if (zY) {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    }
                    boolean z51211 = z19;
                    Modifier modifierD8 = ClickableKt.d(dTFunctionNameModifier9, z51211, null, null, (Function0) objX12, 14);
                    z36 = z51211;
                    if ((458752 & i7) == i11) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    boolean zY115 = z37 | gapComposer2.y(context);
                    if ((i41 & 57344) == 16384) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zD = zY115 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                    objX13 = gapComposer2.x();
                    if (zD) {
                        final ExoPlayer exoPlayer114 = exoPlayer2;
                        final int i514 = i46;
                        final boolean z5111111110 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z5111111110;
                                Context context2 = context;
                                MutableState mutableState16 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState16.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState16.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i514);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer114);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z5111111110;
                        i48 = i514;
                        gapComposer2.q(objX13);
                    } else {
                        final ExoPlayer exoPlayer115 = exoPlayer2;
                        final int i515 = i46;
                        final boolean z5111111111 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z5111111111;
                                Context context2 = context;
                                MutableState mutableState16 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState16.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState16.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i515);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer115);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z5111111111;
                        i48 = i515;
                        gapComposer2.q(objX13);
                    }
                    AndroidView_androidKt.a((Function1) objX13, modifierD8, null, gapComposer2, 0, 4);
                    ContentScale contentScale12 = contentScale3;
                    String str1115 = str9;
                    Function2 function21111114 = function12;
                    Function2 function21111115 = function13;
                    str12 = str1115;
                    function22 = function21111114;
                    function23 = function21111115;
                    contentScale4 = contentScale12;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str1115, function21111114, function21111115, contentScale12, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                }
                i45 = i48;
                contentScale2 = contentScale4;
                bool2 = bool5;
                function6 = function22;
                function7 = function23;
                gapComposer = gapComposer2;
                z11 = z33;
                z9 = z31;
                modifier3 = dTFunctionNameModifier;
                z10 = z34;
                function8 = function19;
                function10 = function20;
                f4 = f5;
                z8 = z39;
                str6 = str12;
                z13 = z36;
                function9 = function15;
                z12 = z32;
                function11 = function18;
                str7 = str11;
            } else {
                gapComposerH.D();
                z8 = z;
                contentScale2 = contentScale;
                z9 = z3;
                z10 = z5;
                bool2 = bool;
                function6 = function2;
                function7 = function3;
                function8 = function0;
                function9 = function1;
                function10 = function4;
                function11 = function5;
                gapComposer = gapComposerH;
                str6 = str5;
                f4 = f3;
                str7 = str4;
                modifier3 = modifier2;
                z11 = z2;
                z12 = z4;
                z13 = z6;
                i45 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: ib0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        int iA3 = RecomposeScopeImplKt.a(i5);
                        LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 3072;
        str4 = str2;
        i8 = i6 & 16;
        if (i8 != 0) {
            if ((i3 & 24576) == 0) {
                f3 = f2;
                if (gapComposerH.K(f3)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i7 |= i9;
            }
            i10 = i6 & 32;
            if (i10 != 0) {
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    i11 = 131072;
                    if (gapComposerH.b(z)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i7 |= i12;
                }
                i13 = i6 & 64;
                if (i13 != 0) {
                    i7 |= 1572864;
                    str5 = str3;
                } else {
                    str5 = str3;
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(str5)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i7 |= i14;
                    }
                }
                modifier2 = modifierE;
                i15 = i6 & 128;
                if (i15 != 0) {
                    i7 |= 12582912;
                } else if ((i3 & 12582912) == 0) {
                    if (gapComposerH.K(contentScale)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i7 |= i16;
                }
                i17 = i6 & 256;
                if (i17 != 0) {
                    i7 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                    i7 |= i18;
                }
                i19 = i6 & 512;
                if (i19 != 0) {
                    i7 |= 805306368;
                } else if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i20 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i20 = 268435456;
                    }
                    i7 |= i20;
                }
                i21 = i6 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.b(z4)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                i24 = i6 & 2048;
                if (i24 != 0) {
                    i22 |= 48;
                } else if ((i4 & 48) != 0) {
                    if (gapComposerH.b(z5)) {
                        i25 = 32;
                    } else {
                        i25 = 16;
                    }
                    i22 |= i25;
                }
                i26 = i22;
                i27 = i6 & 4096;
                if (i27 != 0) {
                    i28 = i26 | KyberEngine.KyberPolyBytes;
                } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                    i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
                } else {
                    i28 = i26;
                }
                i29 = i6 & 8192;
                if (i29 != 0) {
                    i31 = i28 | 3072;
                } else {
                    i30 = i28;
                    if ((i4 & 3072) == 0) {
                        i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                    } else {
                        i31 = i30;
                    }
                }
                i32 = i6 & 16384;
                if (i32 != 0) {
                    i33 = i31;
                    if ((i4 & 24576) == 0) {
                        i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                    }
                    i34 = i6 & 32768;
                    if (i34 != 0) {
                        i33 |= ImageMetadata.EDGE_MODE;
                    } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.y(function2)) {
                            i35 = i11;
                        } else {
                            i35 = 65536;
                        }
                        i33 |= i35;
                    }
                    i36 = i6 & 65536;
                    if (i36 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        if (gapComposerH.y(function3)) {
                            i37 = 1048576;
                        } else {
                            i37 = 524288;
                        }
                        i33 |= i37;
                    }
                    i38 = i6 & i11;
                    if (i38 != 0) {
                        i33 |= 12582912;
                    } else if ((i4 & 12582912) == 0) {
                        i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                    }
                    i39 = i6 & 262144;
                    if (i39 != 0) {
                        i33 |= 100663296;
                    } else if ((i4 & 100663296) == 0) {
                        i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                    }
                    i40 = i6 & 524288;
                    if (i40 != 0) {
                        i33 |= 805306368;
                    } else if ((i4 & 805306368) == 0) {
                        i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                    }
                    i41 = i33;
                    i42 = i6 & 1048576;
                    if (i42 != 0) {
                        i43 = 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function5)) {
                            i44 = 4;
                        } else {
                            i44 = 2;
                        }
                        i43 = i5 | i44;
                    } else {
                        i43 = i5;
                    }
                    if ((i7 & 306783379) != 306783378) {
                        z7 = true;
                    } else {
                        z7 = true;
                    }
                    if (gapComposerH.p(i7 & 1, z7)) {
                        if (i49 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i50 != 0) {
                            str8 = null;
                        } else {
                            str8 = str4;
                        }
                        if (i8 != 0) {
                            f5 = null;
                        } else {
                            f5 = f3;
                        }
                        if (i10 != 0) {
                            z14 = false;
                        } else {
                            z14 = z;
                        }
                        if (i13 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        if (i15 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale3 = ContentScale.Companion.d;
                        } else {
                            contentScale3 = contentScale;
                        }
                        if (i17 != 0) {
                            z15 = true;
                        } else {
                            z15 = z2;
                        }
                        if (i19 != 0) {
                            z16 = false;
                        } else {
                            z16 = z3;
                        }
                        if (i21 != 0) {
                            z17 = true;
                        } else {
                            z17 = z4;
                        }
                        if (i24 != 0) {
                            z18 = false;
                        } else {
                            z18 = z5;
                        }
                        if (i27 != 0) {
                            bool3 = null;
                        } else {
                            bool3 = bool;
                        }
                        if (i29 != 0) {
                            z19 = true;
                        } else {
                            z19 = z6;
                        }
                        if (i32 != 0) {
                            i46 = 0;
                        } else {
                            i46 = i2;
                        }
                        if (i34 != 0) {
                            function12 = null;
                        } else {
                            function12 = function2;
                        }
                        if (i36 != 0) {
                            function13 = null;
                        } else {
                            function13 = function3;
                        }
                        if (i38 != 0) {
                            function14 = null;
                        } else {
                            function14 = function0;
                        }
                        if (i39 != 0) {
                            function15 = null;
                        } else {
                            function15 = function1;
                        }
                        if (i40 != 0) {
                            function16 = null;
                        } else {
                            function16 = function4;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i42 != 0) {
                            objX14 = gapComposerH.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new fa0(9);
                                gapComposerH.q(objX14);
                            }
                            function17 = (Function0) objX14;
                        } else {
                            function17 = function5;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                            gapComposerH.L(1098171633);
                            Alignment.f8582a.getClass();
                            measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            function24 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function24);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                            Boolean bool14 = bool3;
                            TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                            gapComposer2 = gapComposerH;
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                            bool5 = bool14;
                            function15 = function15;
                            function20 = function16;
                            str11 = str8;
                            i48 = i46;
                            contentScale4 = contentScale3;
                            z39 = z14;
                            z33 = z15;
                            str12 = str9;
                            z31 = z16;
                            z32 = z17;
                            z34 = z18;
                            z36 = z19;
                            function22 = function12;
                            function23 = function13;
                            function19 = function14;
                            function18 = function17;
                        } else {
                            bool4 = bool3;
                            gapComposer2 = gapComposerH;
                            gapComposer2.L(1098674794);
                            context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                            mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                            objX = gapComposer2.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX);
                            }
                            mutableState = (MutableState) objX;
                            objX2 = gapComposer2.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    z41 = true;
                                } else {
                                    z41 = true;
                                }
                                objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                                gapComposer2.q(objX2);
                            }
                            mutableState2 = (MutableState) objX2;
                            objX3 = gapComposer2.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                cacheFactory = AppModule.f51474a;
                                if (cacheFactory != null) {
                                    objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                                } else {
                                    objX3 = null;
                                }
                                gapComposer2.q(objX3);
                            }
                            factory = (CacheDataSource.Factory) objX3;
                            objX4 = gapComposer2.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX4);
                            }
                            mutableState3 = (MutableState) objX4;
                            objX5 = gapComposer2.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                if (str9 == null) {
                                    z40 = true;
                                } else {
                                    z40 = true;
                                }
                                objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                                gapComposer2.q(objX5);
                            }
                            mutableState4 = (MutableState) objX5;
                            objX6 = gapComposer2.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                                gapComposer2.q(objX6);
                            }
                            mutableState5 = (MutableState) objX6;
                            boolean zY116 = gapComposer2.y(exoPlayer);
                            if ((i43 & 14) == 4) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            boolean z41111116 = zY116 | z20;
                            if ((29360128 & i41) == 8388608) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            boolean z41111117 = z41111116 | z21;
                            if ((i41 & 1879048192) == 536870912) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            boolean z41111118 = z41111117 | z22;
                            if ((i7 & 896) == 256) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            boolean z41111119 = z41111118 | z23;
                            if ((i7 & 7168) == 2048) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                            boolean zY117 = z41111119 | z24 | gapComposer2.y(factory);
                            if ((i7 & 1879048192) == 536870912) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            boolean z411111110 = zY117 | z25;
                            if ((i41 & 14) == 4) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            boolean z411111111 = z411111110 | z26;
                            if ((i7 & 234881024) == 67108864) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            boolean z411111112 = z411111111 | z27;
                            if ((i41 & 896) == 256) {
                                z28 = true;
                            } else {
                                z28 = false;
                            }
                            boolean z411111113 = z28 | z411111112;
                            if ((i41 & 112) == 32) {
                                z29 = true;
                            } else {
                                z29 = false;
                            }
                            z30 = z411111113 | z29;
                            objX7 = gapComposer2.x();
                            if (z30) {
                                Function0 function21111116 = function16;
                                String str1116 = str8;
                                boolean z5111111112 = z15;
                                boolean z5111111113 = z16;
                                boolean z5111111114 = z17;
                                boolean z5111111115 = z18;
                                Function0 function21111117 = function14;
                                Function0 function21111118 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1116, factory, z5111111113, z5111111114, z5111111112, bool4, z5111111115, mutableState3, function21111118, mutableState5, function21111117, function21111116, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str1116;
                                z31 = z5111111113;
                                z32 = z5111111114;
                                z33 = z5111111112;
                                bool5 = bool4;
                                z34 = z5111111115;
                                function18 = function21111118;
                                function19 = function21111117;
                                function20 = function21111116;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            } else {
                                Function0 function21111119 = function16;
                                String str1117 = str8;
                                boolean z5111111116 = z15;
                                boolean z5111111117 = z16;
                                boolean z5111111118 = z17;
                                boolean z5111111119 = z18;
                                Function0 function211111110 = function14;
                                Function0 function211111111 = function17;
                                objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1117, factory, z5111111117, z5111111118, z5111111116, bool4, z5111111119, mutableState3, function211111111, mutableState5, function211111110, function21111119, mutableState4, mutableState2, null);
                                exoPlayer2 = exoPlayer;
                                str10 = str;
                                str11 = str1117;
                                z31 = z5111111117;
                                z32 = z5111111118;
                                z33 = z5111111116;
                                bool5 = bool4;
                                z34 = z5111111119;
                                function18 = function211111111;
                                function19 = function211111110;
                                function20 = function21111119;
                                mutableState6 = mutableState2;
                                gapComposer2.q(objX7);
                            }
                            EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                            if (bool5 == null) {
                                gapComposer2.L(1103314377);
                                gapComposer2.Z(false);
                                str11 = str11;
                            } else {
                                gapComposer2.L(1103314378);
                                zBooleanValue = bool5.booleanValue();
                                zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                                objX8 = gapComposer2.x();
                                if (zB) {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                } else {
                                    objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                    gapComposer2.q(objX8);
                                }
                                EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                                gapComposer2.Z(false);
                            }
                            objX9 = gapComposer2.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                final ExoPlayer exoPlayer116 = exoPlayer2;
                                final MutableState mutableState16 = mutableState6;
                                final boolean z51125 = z32;
                                final boolean z51212 = z34;
                                objX9 = new LifecycleEventObserver() { // from class: gb0
                                    @Override // androidx.lifecycle.LifecycleEventObserver
                                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                        int i516 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                        ExoPlayer exoPlayer117 = exoPlayer116;
                                        MutableState mutableState17 = mutableState;
                                        if (i516 == 1) {
                                            mutableState17.setValue(Boolean.valueOf(((Boolean) mutableState16.getF10755b()).booleanValue() ? exoPlayer117.isPlaying() : false));
                                            exoPlayer117.pause();
                                            return;
                                        }
                                        if (i516 != 2) {
                                            if (i516 != 3) {
                                                return;
                                            }
                                            exoPlayer117.release();
                                        } else {
                                            if (z51125 || ((Boolean) mutableState17.getF10755b()).booleanValue()) {
                                                exoPlayer117.c();
                                            }
                                            if (z51212) {
                                                exoPlayer117.pause();
                                            }
                                        }
                                    }
                                };
                                gapComposer2.q(objX9);
                            }
                            lifecycleEventObserver = (LifecycleEventObserver) objX9;
                            Object f10755b9 = mutableStateL.getF10755b();
                            zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                            objX10 = gapComposer2.x();
                            if (zK) {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            } else {
                                objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                                gapComposer2.q(objX10);
                            }
                            EffectsKt.c(f10755b9, (Function1) objX10, gapComposer2);
                            if (f5 != null) {
                                modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                            } else {
                                modifierA = dTFunctionNameModifier;
                            }
                            Modifier modifierO9 = dTFunctionNameModifier.o(modifierA);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposer2.T);
                            persistentCompositionLocalMapU = gapComposer2.U();
                            modifierC = ComposedModifierKt.c(gapComposer2, modifierO9);
                            ComposeUiNode.b0.getClass();
                            function21 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposer2.B();
                            if (gapComposer2.S) {
                                gapComposer2.C(function21);
                            } else {
                                gapComposer2.o();
                            }
                            Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                            i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                            objX11 = gapComposer2.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = SnapshotStateKt.g(null);
                                gapComposer2.q(objX11);
                            }
                            mutableState7 = (MutableState) objX11;
                            DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("LvVideoPlayer");
                            if ((i41 & 234881024) == 67108864) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            zY = z35 | gapComposer2.y(exoPlayer2);
                            objX12 = gapComposer2.x();
                            if (zY) {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new t30(function15, exoPlayer2, 11);
                                gapComposer2.q(objX12);
                            }
                            boolean z51213 = z19;
                            Modifier modifierD9 = ClickableKt.d(dTFunctionNameModifier10, z51213, null, null, (Function0) objX12, 14);
                            z36 = z51213;
                            if ((458752 & i7) == i11) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            boolean zY118 = z37 | gapComposer2.y(context);
                            if ((i41 & 57344) == 16384) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zD = zY118 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                            objX13 = gapComposer2.x();
                            if (zD) {
                                final ExoPlayer exoPlayer117 = exoPlayer2;
                                final int i516 = i46;
                                final boolean z51111111110 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z51111111110;
                                        Context context2 = context;
                                        MutableState mutableState17 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState17.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState17.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i516);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer117);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z51111111110;
                                i48 = i516;
                                gapComposer2.q(objX13);
                            } else {
                                final ExoPlayer exoPlayer118 = exoPlayer2;
                                final int i517 = i46;
                                final boolean z51111111111 = z14;
                                objX13 = new Function1() { // from class: hb0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                        ((Context) obj).getClass();
                                        boolean z520 = z51111111111;
                                        Context context2 = context;
                                        MutableState mutableState17 = mutableState7;
                                        if (z520) {
                                            XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                            xml.getClass();
                                            for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                            }
                                            mutableState17.setValue(Xml.asAttributeSet(xml));
                                        }
                                        PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState17.getF10755b());
                                        PlayerControlView playerControlView = playerView.m;
                                        if (playerControlView != null) {
                                            playerControlView.g();
                                        }
                                        playerView.setUseController(false);
                                        playerView.setResizeMode(i517);
                                        playerView.setShutterBackgroundColor(i47);
                                        playerView.setKeepContentOnPlayerReset(true);
                                        SubtitleView subtitleView = playerView.getSubtitleView();
                                        if (subtitleView != null) {
                                            subtitleView.setApplyEmbeddedFontSizes(false);
                                            subtitleView.a();
                                            subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                        }
                                        playerView.setPlayer(exoPlayer118);
                                        playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        return playerView;
                                    }
                                };
                                z39 = z51111111111;
                                i48 = i517;
                                gapComposer2.q(objX13);
                            }
                            AndroidView_androidKt.a((Function1) objX13, modifierD9, null, gapComposer2, 0, 4);
                            ContentScale contentScale13 = contentScale3;
                            String str1118 = str9;
                            Function2 function211111112 = function12;
                            Function2 function211111113 = function13;
                            str12 = str1118;
                            function22 = function211111112;
                            function23 = function211111113;
                            contentScale4 = contentScale13;
                            ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str1118, function211111112, function211111113, contentScale13, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                            gapComposer2.Z(true);
                            gapComposer2.Z(false);
                        }
                        i45 = i48;
                        contentScale2 = contentScale4;
                        bool2 = bool5;
                        function6 = function22;
                        function7 = function23;
                        gapComposer = gapComposer2;
                        z11 = z33;
                        z9 = z31;
                        modifier3 = dTFunctionNameModifier;
                        z10 = z34;
                        function8 = function19;
                        function10 = function20;
                        f4 = f5;
                        z8 = z39;
                        str6 = str12;
                        z13 = z36;
                        function9 = function15;
                        z12 = z32;
                        function11 = function18;
                        str7 = str11;
                    } else {
                        gapComposerH.D();
                        z8 = z;
                        contentScale2 = contentScale;
                        z9 = z3;
                        z10 = z5;
                        bool2 = bool;
                        function6 = function2;
                        function7 = function3;
                        function8 = function0;
                        function9 = function1;
                        function10 = function4;
                        function11 = function5;
                        gapComposer = gapComposerH;
                        str6 = str5;
                        f4 = f3;
                        str7 = str4;
                        modifier3 = modifier2;
                        z11 = z2;
                        z12 = z4;
                        z13 = z6;
                        i45 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: ib0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                int iA3 = RecomposeScopeImplKt.a(i5);
                                LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i33 = i31 | 24576;
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool15 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool15;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY119 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z411111114 = zY119 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z411111115 = z411111114 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z411111116 = z411111115 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z411111117 = z411111116 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY1110 = z411111117 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z411111118 = zY1110 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z411111119 = z411111118 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z4111111110 = z411111119 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z4111111111 = z28 | z4111111110;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z4111111111 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function211111114 = function16;
                            String str1119 = str8;
                            boolean z51111111112 = z15;
                            boolean z51111111113 = z16;
                            boolean z51111111114 = z17;
                            boolean z51111111115 = z18;
                            Function0 function211111115 = function14;
                            Function0 function211111116 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str1119, factory, z51111111113, z51111111114, z51111111112, bool4, z51111111115, mutableState3, function211111116, mutableState5, function211111115, function211111114, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str1119;
                            z31 = z51111111113;
                            z32 = z51111111114;
                            z33 = z51111111112;
                            bool5 = bool4;
                            z34 = z51111111115;
                            function18 = function211111116;
                            function19 = function211111115;
                            function20 = function211111114;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function211111117 = function16;
                            String str11110 = str8;
                            boolean z51111111116 = z15;
                            boolean z51111111117 = z16;
                            boolean z51111111118 = z17;
                            boolean z51111111119 = z18;
                            Function0 function211111118 = function14;
                            Function0 function211111119 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11110, factory, z51111111117, z51111111118, z51111111116, bool4, z51111111119, mutableState3, function211111119, mutableState5, function211111118, function211111117, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str11110;
                            z31 = z51111111117;
                            z32 = z51111111118;
                            z33 = z51111111116;
                            bool5 = bool4;
                            z34 = z51111111119;
                            function18 = function211111119;
                            function19 = function211111118;
                            function20 = function211111117;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer119 = exoPlayer2;
                            final MutableState mutableState17 = mutableState6;
                            final boolean z51126 = z32;
                            final boolean z51214 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i518 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer1110 = exoPlayer119;
                                    MutableState mutableState18 = mutableState;
                                    if (i518 == 1) {
                                        mutableState18.setValue(Boolean.valueOf(((Boolean) mutableState17.getF10755b()).booleanValue() ? exoPlayer1110.isPlaying() : false));
                                        exoPlayer1110.pause();
                                        return;
                                    }
                                    if (i518 != 2) {
                                        if (i518 != 3) {
                                            return;
                                        }
                                        exoPlayer1110.release();
                                    } else {
                                        if (z51126 || ((Boolean) mutableState18.getF10755b()).booleanValue()) {
                                            exoPlayer1110.c();
                                        }
                                        if (z51214) {
                                            exoPlayer1110.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b10 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b10, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO10 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO10);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z51215 = z19;
                        Modifier modifierD10 = ClickableKt.d(dTFunctionNameModifier11, z51215, null, null, (Function0) objX12, 14);
                        z36 = z51215;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY1111 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY1111 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer1110 = exoPlayer2;
                            final int i518 = i46;
                            final boolean z511111111110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111111110;
                                    Context context2 = context;
                                    MutableState mutableState18 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState18.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState18.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i518);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer1110);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111111110;
                            i48 = i518;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer1111 = exoPlayer2;
                            final int i519 = i46;
                            final boolean z511111111111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111111111;
                                    Context context2 = context;
                                    MutableState mutableState18 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState18.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState18.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i519);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer1111);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111111111;
                            i48 = i519;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD10, null, gapComposer2, 0, 4);
                        ContentScale contentScale14 = contentScale3;
                        String str11111 = str9;
                        Function2 function2111111110 = function12;
                        Function2 function2111111111 = function13;
                        str12 = str11111;
                        function22 = function2111111110;
                        function23 = function2111111111;
                        contentScale4 = contentScale14;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str11111, function2111111110, function2111111111, contentScale14, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= ImageMetadata.EDGE_MODE;
            i11 = 131072;
            i13 = i6 & 64;
            if (i13 != 0) {
                i7 |= 1572864;
                str5 = str3;
            } else {
                str5 = str3;
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(str5)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i7 |= i14;
                }
            }
            modifier2 = modifierE;
            i15 = i6 & 128;
            if (i15 != 0) {
                i7 |= 12582912;
            } else if ((i3 & 12582912) == 0) {
                if (gapComposerH.K(contentScale)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i7 |= i16;
            }
            i17 = i6 & 256;
            if (i17 != 0) {
                i7 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (gapComposerH.b(z2)) {
                    i18 = 67108864;
                } else {
                    i18 = 33554432;
                }
                i7 |= i18;
            }
            i19 = i6 & 512;
            if (i19 != 0) {
                i7 |= 805306368;
            } else if ((i3 & 805306368) == 0) {
                if (gapComposerH.b(z3)) {
                    i20 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i20 = 268435456;
                }
                i7 |= i20;
            }
            i21 = i6 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.b(z4)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            i24 = i6 & 2048;
            if (i24 != 0) {
                i22 |= 48;
            } else if ((i4 & 48) != 0) {
                if (gapComposerH.b(z5)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i22 |= i25;
            }
            i26 = i22;
            i27 = i6 & 4096;
            if (i27 != 0) {
                i28 = i26 | KyberEngine.KyberPolyBytes;
            } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
            } else {
                i28 = i26;
            }
            i29 = i6 & 8192;
            if (i29 != 0) {
                i31 = i28 | 3072;
            } else {
                i30 = i28;
                if ((i4 & 3072) == 0) {
                    i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                } else {
                    i31 = i30;
                }
            }
            i32 = i6 & 16384;
            if (i32 != 0) {
                i33 = i31;
                if ((i4 & 24576) == 0) {
                    i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                }
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool16 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool16;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY1112 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z4111111112 = zY1112 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z4111111113 = z4111111112 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z4111111114 = z4111111113 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z4111111115 = z4111111114 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY1113 = z4111111115 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z4111111116 = zY1113 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z4111111117 = z4111111116 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z4111111118 = z4111111117 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z4111111119 = z28 | z4111111118;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z4111111119 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function2111111112 = function16;
                            String str11112 = str8;
                            boolean z511111111112 = z15;
                            boolean z511111111113 = z16;
                            boolean z511111111114 = z17;
                            boolean z511111111115 = z18;
                            Function0 function2111111113 = function14;
                            Function0 function2111111114 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11112, factory, z511111111113, z511111111114, z511111111112, bool4, z511111111115, mutableState3, function2111111114, mutableState5, function2111111113, function2111111112, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str11112;
                            z31 = z511111111113;
                            z32 = z511111111114;
                            z33 = z511111111112;
                            bool5 = bool4;
                            z34 = z511111111115;
                            function18 = function2111111114;
                            function19 = function2111111113;
                            function20 = function2111111112;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function2111111115 = function16;
                            String str11113 = str8;
                            boolean z511111111116 = z15;
                            boolean z511111111117 = z16;
                            boolean z511111111118 = z17;
                            boolean z511111111119 = z18;
                            Function0 function2111111116 = function14;
                            Function0 function2111111117 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11113, factory, z511111111117, z511111111118, z511111111116, bool4, z511111111119, mutableState3, function2111111117, mutableState5, function2111111116, function2111111115, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str11113;
                            z31 = z511111111117;
                            z32 = z511111111118;
                            z33 = z511111111116;
                            bool5 = bool4;
                            z34 = z511111111119;
                            function18 = function2111111117;
                            function19 = function2111111116;
                            function20 = function2111111115;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer1112 = exoPlayer2;
                            final MutableState mutableState18 = mutableState6;
                            final boolean z51127 = z32;
                            final boolean z51216 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i5110 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer1113 = exoPlayer1112;
                                    MutableState mutableState19 = mutableState;
                                    if (i5110 == 1) {
                                        mutableState19.setValue(Boolean.valueOf(((Boolean) mutableState18.getF10755b()).booleanValue() ? exoPlayer1113.isPlaying() : false));
                                        exoPlayer1113.pause();
                                        return;
                                    }
                                    if (i5110 != 2) {
                                        if (i5110 != 3) {
                                            return;
                                        }
                                        exoPlayer1113.release();
                                    } else {
                                        if (z51127 || ((Boolean) mutableState19.getF10755b()).booleanValue()) {
                                            exoPlayer1113.c();
                                        }
                                        if (z51216) {
                                            exoPlayer1113.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b11 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b11, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO11 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO11);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z51217 = z19;
                        Modifier modifierD11 = ClickableKt.d(dTFunctionNameModifier12, z51217, null, null, (Function0) objX12, 14);
                        z36 = z51217;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY1114 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY1114 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer1113 = exoPlayer2;
                            final int i5110 = i46;
                            final boolean z5111111111110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z5111111111110;
                                    Context context2 = context;
                                    MutableState mutableState19 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState19.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState19.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i5110);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer1113);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z5111111111110;
                            i48 = i5110;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer1114 = exoPlayer2;
                            final int i5111 = i46;
                            final boolean z5111111111111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z5111111111111;
                                    Context context2 = context;
                                    MutableState mutableState19 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState19.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState19.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i5111);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer1114);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z5111111111111;
                            i48 = i5111;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD11, null, gapComposer2, 0, 4);
                        ContentScale contentScale15 = contentScale3;
                        String str11114 = str9;
                        Function2 function2111111118 = function12;
                        Function2 function2111111119 = function13;
                        str12 = str11114;
                        function22 = function2111111118;
                        function23 = function2111111119;
                        contentScale4 = contentScale15;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str11114, function2111111118, function2111111119, contentScale15, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i33 = i31 | 24576;
            i34 = i6 & 32768;
            if (i34 != 0) {
                i33 |= ImageMetadata.EDGE_MODE;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function2)) {
                    i35 = i11;
                } else {
                    i35 = 65536;
                }
                i33 |= i35;
            }
            i36 = i6 & 65536;
            if (i36 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                if (gapComposerH.y(function3)) {
                    i37 = 1048576;
                } else {
                    i37 = 524288;
                }
                i33 |= i37;
            }
            i38 = i6 & i11;
            if (i38 != 0) {
                i33 |= 12582912;
            } else if ((i4 & 12582912) == 0) {
                i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
            }
            i39 = i6 & 262144;
            if (i39 != 0) {
                i33 |= 100663296;
            } else if ((i4 & 100663296) == 0) {
                i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
            }
            i40 = i6 & 524288;
            if (i40 != 0) {
                i33 |= 805306368;
            } else if ((i4 & 805306368) == 0) {
                i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
            i41 = i33;
            i42 = i6 & 1048576;
            if (i42 != 0) {
                i43 = 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function5)) {
                    i44 = 4;
                } else {
                    i44 = 2;
                }
                i43 = i5 | i44;
            } else {
                i43 = i5;
            }
            if ((i7 & 306783379) != 306783378) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (gapComposerH.p(i7 & 1, z7)) {
                if (i49 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i50 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i8 != 0) {
                    f5 = null;
                } else {
                    f5 = f3;
                }
                if (i10 != 0) {
                    z14 = false;
                } else {
                    z14 = z;
                }
                if (i13 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i15 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale3 = ContentScale.Companion.d;
                } else {
                    contentScale3 = contentScale;
                }
                if (i17 != 0) {
                    z15 = true;
                } else {
                    z15 = z2;
                }
                if (i19 != 0) {
                    z16 = false;
                } else {
                    z16 = z3;
                }
                if (i21 != 0) {
                    z17 = true;
                } else {
                    z17 = z4;
                }
                if (i24 != 0) {
                    z18 = false;
                } else {
                    z18 = z5;
                }
                if (i27 != 0) {
                    bool3 = null;
                } else {
                    bool3 = bool;
                }
                if (i29 != 0) {
                    z19 = true;
                } else {
                    z19 = z6;
                }
                if (i32 != 0) {
                    i46 = 0;
                } else {
                    i46 = i2;
                }
                if (i34 != 0) {
                    function12 = null;
                } else {
                    function12 = function2;
                }
                if (i36 != 0) {
                    function13 = null;
                } else {
                    function13 = function3;
                }
                if (i38 != 0) {
                    function14 = null;
                } else {
                    function14 = function0;
                }
                if (i39 != 0) {
                    function15 = null;
                } else {
                    function15 = function1;
                }
                if (i40 != 0) {
                    function16 = null;
                } else {
                    function16 = function4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i42 != 0) {
                    objX14 = gapComposerH.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new fa0(9);
                        gapComposerH.q(objX14);
                    }
                    function17 = (Function0) objX14;
                } else {
                    function17 = function5;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                    gapComposerH.L(1098171633);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    function24 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function24);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                    Boolean bool17 = bool3;
                    TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                    bool5 = bool17;
                    function15 = function15;
                    function20 = function16;
                    str11 = str8;
                    i48 = i46;
                    contentScale4 = contentScale3;
                    z39 = z14;
                    z33 = z15;
                    str12 = str9;
                    z31 = z16;
                    z32 = z17;
                    z34 = z18;
                    z36 = z19;
                    function22 = function12;
                    function23 = function13;
                    function19 = function14;
                    function18 = function17;
                } else {
                    bool4 = bool3;
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(1098674794);
                    context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                    mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                    objX = gapComposer2.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    objX2 = gapComposer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            z41 = true;
                        } else {
                            z41 = true;
                        }
                        objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                        gapComposer2.q(objX2);
                    }
                    mutableState2 = (MutableState) objX2;
                    objX3 = gapComposer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        cacheFactory = AppModule.f51474a;
                        if (cacheFactory != null) {
                            objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                        } else {
                            objX3 = null;
                        }
                        gapComposer2.q(objX3);
                    }
                    factory = (CacheDataSource.Factory) objX3;
                    objX4 = gapComposer2.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX4);
                    }
                    mutableState3 = (MutableState) objX4;
                    objX5 = gapComposer2.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        if (str9 == null) {
                            z40 = true;
                        } else {
                            z40 = true;
                        }
                        objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                        gapComposer2.q(objX5);
                    }
                    mutableState4 = (MutableState) objX5;
                    objX6 = gapComposer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX6);
                    }
                    mutableState5 = (MutableState) objX6;
                    boolean zY1115 = gapComposer2.y(exoPlayer);
                    if ((i43 & 14) == 4) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean z41111111110 = zY1115 | z20;
                    if ((29360128 & i41) == 8388608) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    boolean z41111111111 = z41111111110 | z21;
                    if ((i41 & 1879048192) == 536870912) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    boolean z41111111112 = z41111111111 | z22;
                    if ((i7 & 896) == 256) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    boolean z41111111113 = z41111111112 | z23;
                    if ((i7 & 7168) == 2048) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean zY1116 = z41111111113 | z24 | gapComposer2.y(factory);
                    if ((i7 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    boolean z41111111114 = zY1116 | z25;
                    if ((i41 & 14) == 4) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean z41111111115 = z41111111114 | z26;
                    if ((i7 & 234881024) == 67108864) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    boolean z41111111116 = z41111111115 | z27;
                    if ((i41 & 896) == 256) {
                        z28 = true;
                    } else {
                        z28 = false;
                    }
                    boolean z41111111117 = z28 | z41111111116;
                    if ((i41 & 112) == 32) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z41111111117 | z29;
                    objX7 = gapComposer2.x();
                    if (z30) {
                        Function0 function21111111110 = function16;
                        String str11115 = str8;
                        boolean z5111111111112 = z15;
                        boolean z5111111111113 = z16;
                        boolean z5111111111114 = z17;
                        boolean z5111111111115 = z18;
                        Function0 function21111111111 = function14;
                        Function0 function21111111112 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11115, factory, z5111111111113, z5111111111114, z5111111111112, bool4, z5111111111115, mutableState3, function21111111112, mutableState5, function21111111111, function21111111110, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str11115;
                        z31 = z5111111111113;
                        z32 = z5111111111114;
                        z33 = z5111111111112;
                        bool5 = bool4;
                        z34 = z5111111111115;
                        function18 = function21111111112;
                        function19 = function21111111111;
                        function20 = function21111111110;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    } else {
                        Function0 function21111111113 = function16;
                        String str11116 = str8;
                        boolean z5111111111116 = z15;
                        boolean z5111111111117 = z16;
                        boolean z5111111111118 = z17;
                        boolean z5111111111119 = z18;
                        Function0 function21111111114 = function14;
                        Function0 function21111111115 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11116, factory, z5111111111117, z5111111111118, z5111111111116, bool4, z5111111111119, mutableState3, function21111111115, mutableState5, function21111111114, function21111111113, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str11116;
                        z31 = z5111111111117;
                        z32 = z5111111111118;
                        z33 = z5111111111116;
                        bool5 = bool4;
                        z34 = z5111111111119;
                        function18 = function21111111115;
                        function19 = function21111111114;
                        function20 = function21111111113;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    }
                    EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                    if (bool5 == null) {
                        gapComposer2.L(1103314377);
                        gapComposer2.Z(false);
                        str11 = str11;
                    } else {
                        gapComposer2.L(1103314378);
                        zBooleanValue = bool5.booleanValue();
                        zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                        objX8 = gapComposer2.x();
                        if (zB) {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        } else {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        }
                        EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                        gapComposer2.Z(false);
                    }
                    objX9 = gapComposer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        final ExoPlayer exoPlayer1115 = exoPlayer2;
                        final MutableState mutableState19 = mutableState6;
                        final boolean z51128 = z32;
                        final boolean z51218 = z34;
                        objX9 = new LifecycleEventObserver() { // from class: gb0
                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                int i5112 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                ExoPlayer exoPlayer1116 = exoPlayer1115;
                                MutableState mutableState110 = mutableState;
                                if (i5112 == 1) {
                                    mutableState110.setValue(Boolean.valueOf(((Boolean) mutableState19.getF10755b()).booleanValue() ? exoPlayer1116.isPlaying() : false));
                                    exoPlayer1116.pause();
                                    return;
                                }
                                if (i5112 != 2) {
                                    if (i5112 != 3) {
                                        return;
                                    }
                                    exoPlayer1116.release();
                                } else {
                                    if (z51128 || ((Boolean) mutableState110.getF10755b()).booleanValue()) {
                                        exoPlayer1116.c();
                                    }
                                    if (z51218) {
                                        exoPlayer1116.pause();
                                    }
                                }
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) objX9;
                    Object f10755b12 = mutableStateL.getF10755b();
                    zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                    objX10 = gapComposer2.x();
                    if (zK) {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    } else {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    }
                    EffectsKt.c(f10755b12, (Function1) objX10, gapComposer2);
                    if (f5 != null) {
                        modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                    } else {
                        modifierA = dTFunctionNameModifier;
                    }
                    Modifier modifierO12 = dTFunctionNameModifier.o(modifierA);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierO12);
                    ComposeUiNode.b0.getClass();
                    function21 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function21);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                    i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                    objX11 = gapComposer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX11);
                    }
                    mutableState7 = (MutableState) objX11;
                    DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("LvVideoPlayer");
                    if ((i41 & 234881024) == 67108864) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    zY = z35 | gapComposer2.y(exoPlayer2);
                    objX12 = gapComposer2.x();
                    if (zY) {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    }
                    boolean z51219 = z19;
                    Modifier modifierD12 = ClickableKt.d(dTFunctionNameModifier13, z51219, null, null, (Function0) objX12, 14);
                    z36 = z51219;
                    if ((458752 & i7) == i11) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    boolean zY1117 = z37 | gapComposer2.y(context);
                    if ((i41 & 57344) == 16384) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zD = zY1117 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                    objX13 = gapComposer2.x();
                    if (zD) {
                        final ExoPlayer exoPlayer1116 = exoPlayer2;
                        final int i5112 = i46;
                        final boolean z51111111111110 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z51111111111110;
                                Context context2 = context;
                                MutableState mutableState110 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState110.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState110.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5112);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer1116);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z51111111111110;
                        i48 = i5112;
                        gapComposer2.q(objX13);
                    } else {
                        final ExoPlayer exoPlayer1117 = exoPlayer2;
                        final int i5113 = i46;
                        final boolean z51111111111111 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z51111111111111;
                                Context context2 = context;
                                MutableState mutableState110 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState110.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState110.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5113);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer1117);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z51111111111111;
                        i48 = i5113;
                        gapComposer2.q(objX13);
                    }
                    AndroidView_androidKt.a((Function1) objX13, modifierD12, null, gapComposer2, 0, 4);
                    ContentScale contentScale16 = contentScale3;
                    String str11117 = str9;
                    Function2 function21111111116 = function12;
                    Function2 function21111111117 = function13;
                    str12 = str11117;
                    function22 = function21111111116;
                    function23 = function21111111117;
                    contentScale4 = contentScale16;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str11117, function21111111116, function21111111117, contentScale16, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                }
                i45 = i48;
                contentScale2 = contentScale4;
                bool2 = bool5;
                function6 = function22;
                function7 = function23;
                gapComposer = gapComposer2;
                z11 = z33;
                z9 = z31;
                modifier3 = dTFunctionNameModifier;
                z10 = z34;
                function8 = function19;
                function10 = function20;
                f4 = f5;
                z8 = z39;
                str6 = str12;
                z13 = z36;
                function9 = function15;
                z12 = z32;
                function11 = function18;
                str7 = str11;
            } else {
                gapComposerH.D();
                z8 = z;
                contentScale2 = contentScale;
                z9 = z3;
                z10 = z5;
                bool2 = bool;
                function6 = function2;
                function7 = function3;
                function8 = function0;
                function9 = function1;
                function10 = function4;
                function11 = function5;
                gapComposer = gapComposerH;
                str6 = str5;
                f4 = f3;
                str7 = str4;
                modifier3 = modifier2;
                z11 = z2;
                z12 = z4;
                z13 = z6;
                i45 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: ib0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        int iA3 = RecomposeScopeImplKt.a(i5);
                        LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 24576;
        f3 = f2;
        i10 = i6 & 32;
        if (i10 != 0) {
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i11 = 131072;
                if (gapComposerH.b(z)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i7 |= i12;
            }
            i13 = i6 & 64;
            if (i13 != 0) {
                i7 |= 1572864;
                str5 = str3;
            } else {
                str5 = str3;
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(str5)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i7 |= i14;
                }
            }
            modifier2 = modifierE;
            i15 = i6 & 128;
            if (i15 != 0) {
                i7 |= 12582912;
            } else if ((i3 & 12582912) == 0) {
                if (gapComposerH.K(contentScale)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i7 |= i16;
            }
            i17 = i6 & 256;
            if (i17 != 0) {
                i7 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (gapComposerH.b(z2)) {
                    i18 = 67108864;
                } else {
                    i18 = 33554432;
                }
                i7 |= i18;
            }
            i19 = i6 & 512;
            if (i19 != 0) {
                i7 |= 805306368;
            } else if ((i3 & 805306368) == 0) {
                if (gapComposerH.b(z3)) {
                    i20 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i20 = 268435456;
                }
                i7 |= i20;
            }
            i21 = i6 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.b(z4)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            i24 = i6 & 2048;
            if (i24 != 0) {
                i22 |= 48;
            } else if ((i4 & 48) != 0) {
                if (gapComposerH.b(z5)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i22 |= i25;
            }
            i26 = i22;
            i27 = i6 & 4096;
            if (i27 != 0) {
                i28 = i26 | KyberEngine.KyberPolyBytes;
            } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
            } else {
                i28 = i26;
            }
            i29 = i6 & 8192;
            if (i29 != 0) {
                i31 = i28 | 3072;
            } else {
                i30 = i28;
                if ((i4 & 3072) == 0) {
                    i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
                } else {
                    i31 = i30;
                }
            }
            i32 = i6 & 16384;
            if (i32 != 0) {
                i33 = i31;
                if ((i4 & 24576) == 0) {
                    i33 |= gapComposerH.d(i2) ? 16384 : 8192;
                }
                i34 = i6 & 32768;
                if (i34 != 0) {
                    i33 |= ImageMetadata.EDGE_MODE;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function2)) {
                        i35 = i11;
                    } else {
                        i35 = 65536;
                    }
                    i33 |= i35;
                }
                i36 = i6 & 65536;
                if (i36 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    if (gapComposerH.y(function3)) {
                        i37 = 1048576;
                    } else {
                        i37 = 524288;
                    }
                    i33 |= i37;
                }
                i38 = i6 & i11;
                if (i38 != 0) {
                    i33 |= 12582912;
                } else if ((i4 & 12582912) == 0) {
                    i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
                }
                i39 = i6 & 262144;
                if (i39 != 0) {
                    i33 |= 100663296;
                } else if ((i4 & 100663296) == 0) {
                    i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
                }
                i40 = i6 & 524288;
                if (i40 != 0) {
                    i33 |= 805306368;
                } else if ((i4 & 805306368) == 0) {
                    i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
                }
                i41 = i33;
                i42 = i6 & 1048576;
                if (i42 != 0) {
                    i43 = 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function5)) {
                        i44 = 4;
                    } else {
                        i44 = 2;
                    }
                    i43 = i5 | i44;
                } else {
                    i43 = i5;
                }
                if ((i7 & 306783379) != 306783378) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (gapComposerH.p(i7 & 1, z7)) {
                    if (i49 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i50 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i8 != 0) {
                        f5 = null;
                    } else {
                        f5 = f3;
                    }
                    if (i10 != 0) {
                        z14 = false;
                    } else {
                        z14 = z;
                    }
                    if (i13 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i15 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale3 = ContentScale.Companion.d;
                    } else {
                        contentScale3 = contentScale;
                    }
                    if (i17 != 0) {
                        z15 = true;
                    } else {
                        z15 = z2;
                    }
                    if (i19 != 0) {
                        z16 = false;
                    } else {
                        z16 = z3;
                    }
                    if (i21 != 0) {
                        z17 = true;
                    } else {
                        z17 = z4;
                    }
                    if (i24 != 0) {
                        z18 = false;
                    } else {
                        z18 = z5;
                    }
                    if (i27 != 0) {
                        bool3 = null;
                    } else {
                        bool3 = bool;
                    }
                    if (i29 != 0) {
                        z19 = true;
                    } else {
                        z19 = z6;
                    }
                    if (i32 != 0) {
                        i46 = 0;
                    } else {
                        i46 = i2;
                    }
                    if (i34 != 0) {
                        function12 = null;
                    } else {
                        function12 = function2;
                    }
                    if (i36 != 0) {
                        function13 = null;
                    } else {
                        function13 = function3;
                    }
                    if (i38 != 0) {
                        function14 = null;
                    } else {
                        function14 = function0;
                    }
                    if (i39 != 0) {
                        function15 = null;
                    } else {
                        function15 = function1;
                    }
                    if (i40 != 0) {
                        function16 = null;
                    } else {
                        function16 = function4;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i42 != 0) {
                        objX14 = gapComposerH.x();
                        if (objX14 == composer$Companion$Empty$1) {
                            objX14 = new fa0(9);
                            gapComposerH.q(objX14);
                        }
                        function17 = (Function0) objX14;
                    } else {
                        function17 = function5;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(1098171633);
                        Alignment.f8582a.getClass();
                        measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        function24 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function24);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                        Boolean bool18 = bool3;
                        TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        bool5 = bool18;
                        function15 = function15;
                        function20 = function16;
                        str11 = str8;
                        i48 = i46;
                        contentScale4 = contentScale3;
                        z39 = z14;
                        z33 = z15;
                        str12 = str9;
                        z31 = z16;
                        z32 = z17;
                        z34 = z18;
                        z36 = z19;
                        function22 = function12;
                        function23 = function13;
                        function19 = function14;
                        function18 = function17;
                    } else {
                        bool4 = bool3;
                        gapComposer2 = gapComposerH;
                        gapComposer2.L(1098674794);
                        context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                        objX = gapComposer2.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        objX2 = gapComposer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                z41 = true;
                            } else {
                                z41 = true;
                            }
                            objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                            gapComposer2.q(objX2);
                        }
                        mutableState2 = (MutableState) objX2;
                        objX3 = gapComposer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            cacheFactory = AppModule.f51474a;
                            if (cacheFactory != null) {
                                objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                            } else {
                                objX3 = null;
                            }
                            gapComposer2.q(objX3);
                        }
                        factory = (CacheDataSource.Factory) objX3;
                        objX4 = gapComposer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX4);
                        }
                        mutableState3 = (MutableState) objX4;
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            if (str9 == null) {
                                z40 = true;
                            } else {
                                z40 = true;
                            }
                            objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                            gapComposer2.q(objX5);
                        }
                        mutableState4 = (MutableState) objX5;
                        objX6 = gapComposer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.q(objX6);
                        }
                        mutableState5 = (MutableState) objX6;
                        boolean zY1118 = gapComposer2.y(exoPlayer);
                        if ((i43 & 14) == 4) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z41111111118 = zY1118 | z20;
                        if ((29360128 & i41) == 8388608) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z41111111119 = z41111111118 | z21;
                        if ((i41 & 1879048192) == 536870912) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z411111111110 = z41111111119 | z22;
                        if ((i7 & 896) == 256) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z411111111111 = z411111111110 | z23;
                        if ((i7 & 7168) == 2048) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean zY1119 = z411111111111 | z24 | gapComposer2.y(factory);
                        if ((i7 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z411111111112 = zY1119 | z25;
                        if ((i41 & 14) == 4) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z411111111113 = z411111111112 | z26;
                        if ((i7 & 234881024) == 67108864) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean z411111111114 = z411111111113 | z27;
                        if ((i41 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        boolean z411111111115 = z28 | z411111111114;
                        if ((i41 & 112) == 32) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z411111111115 | z29;
                        objX7 = gapComposer2.x();
                        if (z30) {
                            Function0 function21111111118 = function16;
                            String str11118 = str8;
                            boolean z51111111111112 = z15;
                            boolean z51111111111113 = z16;
                            boolean z51111111111114 = z17;
                            boolean z51111111111115 = z18;
                            Function0 function21111111119 = function14;
                            Function0 function211111111110 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11118, factory, z51111111111113, z51111111111114, z51111111111112, bool4, z51111111111115, mutableState3, function211111111110, mutableState5, function21111111119, function21111111118, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str11118;
                            z31 = z51111111111113;
                            z32 = z51111111111114;
                            z33 = z51111111111112;
                            bool5 = bool4;
                            z34 = z51111111111115;
                            function18 = function211111111110;
                            function19 = function21111111119;
                            function20 = function21111111118;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        } else {
                            Function0 function211111111111 = function16;
                            String str11119 = str8;
                            boolean z51111111111116 = z15;
                            boolean z51111111111117 = z16;
                            boolean z51111111111118 = z17;
                            boolean z51111111111119 = z18;
                            Function0 function211111111112 = function14;
                            Function0 function211111111113 = function17;
                            objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str11119, factory, z51111111111117, z51111111111118, z51111111111116, bool4, z51111111111119, mutableState3, function211111111113, mutableState5, function211111111112, function211111111111, mutableState4, mutableState2, null);
                            exoPlayer2 = exoPlayer;
                            str10 = str;
                            str11 = str11119;
                            z31 = z51111111111117;
                            z32 = z51111111111118;
                            z33 = z51111111111116;
                            bool5 = bool4;
                            z34 = z51111111111119;
                            function18 = function211111111113;
                            function19 = function211111111112;
                            function20 = function211111111111;
                            mutableState6 = mutableState2;
                            gapComposer2.q(objX7);
                        }
                        EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                        if (bool5 == null) {
                            gapComposer2.L(1103314377);
                            gapComposer2.Z(false);
                            str11 = str11;
                        } else {
                            gapComposer2.L(1103314378);
                            zBooleanValue = bool5.booleanValue();
                            zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                            objX8 = gapComposer2.x();
                            if (zB) {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            } else {
                                objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                                gapComposer2.q(objX8);
                            }
                            EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                            gapComposer2.Z(false);
                        }
                        objX9 = gapComposer2.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            final ExoPlayer exoPlayer1118 = exoPlayer2;
                            final MutableState mutableState110 = mutableState6;
                            final boolean z51129 = z32;
                            final boolean z512110 = z34;
                            objX9 = new LifecycleEventObserver() { // from class: gb0
                                @Override // androidx.lifecycle.LifecycleEventObserver
                                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                    int i5114 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                    ExoPlayer exoPlayer1119 = exoPlayer1118;
                                    MutableState mutableState111 = mutableState;
                                    if (i5114 == 1) {
                                        mutableState111.setValue(Boolean.valueOf(((Boolean) mutableState110.getF10755b()).booleanValue() ? exoPlayer1119.isPlaying() : false));
                                        exoPlayer1119.pause();
                                        return;
                                    }
                                    if (i5114 != 2) {
                                        if (i5114 != 3) {
                                            return;
                                        }
                                        exoPlayer1119.release();
                                    } else {
                                        if (z51129 || ((Boolean) mutableState111.getF10755b()).booleanValue()) {
                                            exoPlayer1119.c();
                                        }
                                        if (z512110) {
                                            exoPlayer1119.pause();
                                        }
                                    }
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objX9;
                        Object f10755b13 = mutableStateL.getF10755b();
                        zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                        objX10 = gapComposer2.x();
                        if (zK) {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        } else {
                            objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                            gapComposer2.q(objX10);
                        }
                        EffectsKt.c(f10755b13, (Function1) objX10, gapComposer2);
                        if (f5 != null) {
                            modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                        } else {
                            modifierA = dTFunctionNameModifier;
                        }
                        Modifier modifierO13 = dTFunctionNameModifier.o(modifierA);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU = gapComposer2.U();
                        modifierC = ComposedModifierKt.c(gapComposer2, modifierO13);
                        ComposeUiNode.b0.getClass();
                        function21 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function21);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                        i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                        objX11 = gapComposer2.x();
                        if (objX11 == composer$Companion$Empty$1) {
                            objX11 = SnapshotStateKt.g(null);
                            gapComposer2.q(objX11);
                        }
                        mutableState7 = (MutableState) objX11;
                        DTFunctionNameModifier dTFunctionNameModifier14 = new DTFunctionNameModifier("LvVideoPlayer");
                        if ((i41 & 234881024) == 67108864) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        zY = z35 | gapComposer2.y(exoPlayer2);
                        objX12 = gapComposer2.x();
                        if (zY) {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new t30(function15, exoPlayer2, 11);
                            gapComposer2.q(objX12);
                        }
                        boolean z512111 = z19;
                        Modifier modifierD13 = ClickableKt.d(dTFunctionNameModifier14, z512111, null, null, (Function0) objX12, 14);
                        z36 = z512111;
                        if ((458752 & i7) == i11) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        boolean zY11110 = z37 | gapComposer2.y(context);
                        if ((i41 & 57344) == 16384) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zD = zY11110 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                        objX13 = gapComposer2.x();
                        if (zD) {
                            final ExoPlayer exoPlayer1119 = exoPlayer2;
                            final int i5114 = i46;
                            final boolean z511111111111110 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111111111110;
                                    Context context2 = context;
                                    MutableState mutableState111 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState111.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState111.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i5114);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer1119);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111111111110;
                            i48 = i5114;
                            gapComposer2.q(objX13);
                        } else {
                            final ExoPlayer exoPlayer11110 = exoPlayer2;
                            final int i5115 = i46;
                            final boolean z511111111111111 = z14;
                            objX13 = new Function1() { // from class: hb0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                    ((Context) obj).getClass();
                                    boolean z520 = z511111111111111;
                                    Context context2 = context;
                                    MutableState mutableState111 = mutableState7;
                                    if (z520) {
                                        XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                        xml.getClass();
                                        for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                        }
                                        mutableState111.setValue(Xml.asAttributeSet(xml));
                                    }
                                    PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState111.getF10755b());
                                    PlayerControlView playerControlView = playerView.m;
                                    if (playerControlView != null) {
                                        playerControlView.g();
                                    }
                                    playerView.setUseController(false);
                                    playerView.setResizeMode(i5115);
                                    playerView.setShutterBackgroundColor(i47);
                                    playerView.setKeepContentOnPlayerReset(true);
                                    SubtitleView subtitleView = playerView.getSubtitleView();
                                    if (subtitleView != null) {
                                        subtitleView.setApplyEmbeddedFontSizes(false);
                                        subtitleView.a();
                                        subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                    }
                                    playerView.setPlayer(exoPlayer11110);
                                    playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    return playerView;
                                }
                            };
                            z39 = z511111111111111;
                            i48 = i5115;
                            gapComposer2.q(objX13);
                        }
                        AndroidView_androidKt.a((Function1) objX13, modifierD13, null, gapComposer2, 0, 4);
                        ContentScale contentScale17 = contentScale3;
                        String str111110 = str9;
                        Function2 function211111111114 = function12;
                        Function2 function211111111115 = function13;
                        str12 = str111110;
                        function22 = function211111111114;
                        function23 = function211111111115;
                        contentScale4 = contentScale17;
                        ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str111110, function211111111114, function211111111115, contentScale17, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                    }
                    i45 = i48;
                    contentScale2 = contentScale4;
                    bool2 = bool5;
                    function6 = function22;
                    function7 = function23;
                    gapComposer = gapComposer2;
                    z11 = z33;
                    z9 = z31;
                    modifier3 = dTFunctionNameModifier;
                    z10 = z34;
                    function8 = function19;
                    function10 = function20;
                    f4 = f5;
                    z8 = z39;
                    str6 = str12;
                    z13 = z36;
                    function9 = function15;
                    z12 = z32;
                    function11 = function18;
                    str7 = str11;
                } else {
                    gapComposerH.D();
                    z8 = z;
                    contentScale2 = contentScale;
                    z9 = z3;
                    z10 = z5;
                    bool2 = bool;
                    function6 = function2;
                    function7 = function3;
                    function8 = function0;
                    function9 = function1;
                    function10 = function4;
                    function11 = function5;
                    gapComposer = gapComposerH;
                    str6 = str5;
                    f4 = f3;
                    str7 = str4;
                    modifier3 = modifier2;
                    z11 = z2;
                    z12 = z4;
                    z13 = z6;
                    i45 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: ib0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            int iA3 = RecomposeScopeImplKt.a(i5);
                            LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i33 = i31 | 24576;
            i34 = i6 & 32768;
            if (i34 != 0) {
                i33 |= ImageMetadata.EDGE_MODE;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function2)) {
                    i35 = i11;
                } else {
                    i35 = 65536;
                }
                i33 |= i35;
            }
            i36 = i6 & 65536;
            if (i36 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                if (gapComposerH.y(function3)) {
                    i37 = 1048576;
                } else {
                    i37 = 524288;
                }
                i33 |= i37;
            }
            i38 = i6 & i11;
            if (i38 != 0) {
                i33 |= 12582912;
            } else if ((i4 & 12582912) == 0) {
                i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
            }
            i39 = i6 & 262144;
            if (i39 != 0) {
                i33 |= 100663296;
            } else if ((i4 & 100663296) == 0) {
                i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
            }
            i40 = i6 & 524288;
            if (i40 != 0) {
                i33 |= 805306368;
            } else if ((i4 & 805306368) == 0) {
                i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
            i41 = i33;
            i42 = i6 & 1048576;
            if (i42 != 0) {
                i43 = 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function5)) {
                    i44 = 4;
                } else {
                    i44 = 2;
                }
                i43 = i5 | i44;
            } else {
                i43 = i5;
            }
            if ((i7 & 306783379) != 306783378) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (gapComposerH.p(i7 & 1, z7)) {
                if (i49 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i50 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i8 != 0) {
                    f5 = null;
                } else {
                    f5 = f3;
                }
                if (i10 != 0) {
                    z14 = false;
                } else {
                    z14 = z;
                }
                if (i13 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i15 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale3 = ContentScale.Companion.d;
                } else {
                    contentScale3 = contentScale;
                }
                if (i17 != 0) {
                    z15 = true;
                } else {
                    z15 = z2;
                }
                if (i19 != 0) {
                    z16 = false;
                } else {
                    z16 = z3;
                }
                if (i21 != 0) {
                    z17 = true;
                } else {
                    z17 = z4;
                }
                if (i24 != 0) {
                    z18 = false;
                } else {
                    z18 = z5;
                }
                if (i27 != 0) {
                    bool3 = null;
                } else {
                    bool3 = bool;
                }
                if (i29 != 0) {
                    z19 = true;
                } else {
                    z19 = z6;
                }
                if (i32 != 0) {
                    i46 = 0;
                } else {
                    i46 = i2;
                }
                if (i34 != 0) {
                    function12 = null;
                } else {
                    function12 = function2;
                }
                if (i36 != 0) {
                    function13 = null;
                } else {
                    function13 = function3;
                }
                if (i38 != 0) {
                    function14 = null;
                } else {
                    function14 = function0;
                }
                if (i39 != 0) {
                    function15 = null;
                } else {
                    function15 = function1;
                }
                if (i40 != 0) {
                    function16 = null;
                } else {
                    function16 = function4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i42 != 0) {
                    objX14 = gapComposerH.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new fa0(9);
                        gapComposerH.q(objX14);
                    }
                    function17 = (Function0) objX14;
                } else {
                    function17 = function5;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                    gapComposerH.L(1098171633);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    function24 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function24);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                    Boolean bool19 = bool3;
                    TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                    bool5 = bool19;
                    function15 = function15;
                    function20 = function16;
                    str11 = str8;
                    i48 = i46;
                    contentScale4 = contentScale3;
                    z39 = z14;
                    z33 = z15;
                    str12 = str9;
                    z31 = z16;
                    z32 = z17;
                    z34 = z18;
                    z36 = z19;
                    function22 = function12;
                    function23 = function13;
                    function19 = function14;
                    function18 = function17;
                } else {
                    bool4 = bool3;
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(1098674794);
                    context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                    mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                    objX = gapComposer2.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    objX2 = gapComposer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            z41 = true;
                        } else {
                            z41 = true;
                        }
                        objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                        gapComposer2.q(objX2);
                    }
                    mutableState2 = (MutableState) objX2;
                    objX3 = gapComposer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        cacheFactory = AppModule.f51474a;
                        if (cacheFactory != null) {
                            objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                        } else {
                            objX3 = null;
                        }
                        gapComposer2.q(objX3);
                    }
                    factory = (CacheDataSource.Factory) objX3;
                    objX4 = gapComposer2.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX4);
                    }
                    mutableState3 = (MutableState) objX4;
                    objX5 = gapComposer2.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        if (str9 == null) {
                            z40 = true;
                        } else {
                            z40 = true;
                        }
                        objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                        gapComposer2.q(objX5);
                    }
                    mutableState4 = (MutableState) objX5;
                    objX6 = gapComposer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX6);
                    }
                    mutableState5 = (MutableState) objX6;
                    boolean zY11111 = gapComposer2.y(exoPlayer);
                    if ((i43 & 14) == 4) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean z411111111116 = zY11111 | z20;
                    if ((29360128 & i41) == 8388608) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    boolean z411111111117 = z411111111116 | z21;
                    if ((i41 & 1879048192) == 536870912) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    boolean z411111111118 = z411111111117 | z22;
                    if ((i7 & 896) == 256) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    boolean z411111111119 = z411111111118 | z23;
                    if ((i7 & 7168) == 2048) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean zY11112 = z411111111119 | z24 | gapComposer2.y(factory);
                    if ((i7 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    boolean z4111111111110 = zY11112 | z25;
                    if ((i41 & 14) == 4) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean z4111111111111 = z4111111111110 | z26;
                    if ((i7 & 234881024) == 67108864) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    boolean z4111111111112 = z4111111111111 | z27;
                    if ((i41 & 896) == 256) {
                        z28 = true;
                    } else {
                        z28 = false;
                    }
                    boolean z4111111111113 = z28 | z4111111111112;
                    if ((i41 & 112) == 32) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z4111111111113 | z29;
                    objX7 = gapComposer2.x();
                    if (z30) {
                        Function0 function211111111116 = function16;
                        String str111111 = str8;
                        boolean z511111111111112 = z15;
                        boolean z511111111111113 = z16;
                        boolean z511111111111114 = z17;
                        boolean z511111111111115 = z18;
                        Function0 function211111111117 = function14;
                        Function0 function211111111118 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111111, factory, z511111111111113, z511111111111114, z511111111111112, bool4, z511111111111115, mutableState3, function211111111118, mutableState5, function211111111117, function211111111116, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str111111;
                        z31 = z511111111111113;
                        z32 = z511111111111114;
                        z33 = z511111111111112;
                        bool5 = bool4;
                        z34 = z511111111111115;
                        function18 = function211111111118;
                        function19 = function211111111117;
                        function20 = function211111111116;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    } else {
                        Function0 function211111111119 = function16;
                        String str111112 = str8;
                        boolean z511111111111116 = z15;
                        boolean z511111111111117 = z16;
                        boolean z511111111111118 = z17;
                        boolean z511111111111119 = z18;
                        Function0 function2111111111110 = function14;
                        Function0 function2111111111111 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111112, factory, z511111111111117, z511111111111118, z511111111111116, bool4, z511111111111119, mutableState3, function2111111111111, mutableState5, function2111111111110, function211111111119, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str111112;
                        z31 = z511111111111117;
                        z32 = z511111111111118;
                        z33 = z511111111111116;
                        bool5 = bool4;
                        z34 = z511111111111119;
                        function18 = function2111111111111;
                        function19 = function2111111111110;
                        function20 = function211111111119;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    }
                    EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                    if (bool5 == null) {
                        gapComposer2.L(1103314377);
                        gapComposer2.Z(false);
                        str11 = str11;
                    } else {
                        gapComposer2.L(1103314378);
                        zBooleanValue = bool5.booleanValue();
                        zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                        objX8 = gapComposer2.x();
                        if (zB) {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        } else {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        }
                        EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                        gapComposer2.Z(false);
                    }
                    objX9 = gapComposer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        final ExoPlayer exoPlayer11111 = exoPlayer2;
                        final MutableState mutableState111 = mutableState6;
                        final boolean z511210 = z32;
                        final boolean z512112 = z34;
                        objX9 = new LifecycleEventObserver() { // from class: gb0
                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                int i5116 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                ExoPlayer exoPlayer11112 = exoPlayer11111;
                                MutableState mutableState112 = mutableState;
                                if (i5116 == 1) {
                                    mutableState112.setValue(Boolean.valueOf(((Boolean) mutableState111.getF10755b()).booleanValue() ? exoPlayer11112.isPlaying() : false));
                                    exoPlayer11112.pause();
                                    return;
                                }
                                if (i5116 != 2) {
                                    if (i5116 != 3) {
                                        return;
                                    }
                                    exoPlayer11112.release();
                                } else {
                                    if (z511210 || ((Boolean) mutableState112.getF10755b()).booleanValue()) {
                                        exoPlayer11112.c();
                                    }
                                    if (z512112) {
                                        exoPlayer11112.pause();
                                    }
                                }
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) objX9;
                    Object f10755b14 = mutableStateL.getF10755b();
                    zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                    objX10 = gapComposer2.x();
                    if (zK) {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    } else {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    }
                    EffectsKt.c(f10755b14, (Function1) objX10, gapComposer2);
                    if (f5 != null) {
                        modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                    } else {
                        modifierA = dTFunctionNameModifier;
                    }
                    Modifier modifierO14 = dTFunctionNameModifier.o(modifierA);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierO14);
                    ComposeUiNode.b0.getClass();
                    function21 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function21);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                    i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                    objX11 = gapComposer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX11);
                    }
                    mutableState7 = (MutableState) objX11;
                    DTFunctionNameModifier dTFunctionNameModifier15 = new DTFunctionNameModifier("LvVideoPlayer");
                    if ((i41 & 234881024) == 67108864) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    zY = z35 | gapComposer2.y(exoPlayer2);
                    objX12 = gapComposer2.x();
                    if (zY) {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    }
                    boolean z512113 = z19;
                    Modifier modifierD14 = ClickableKt.d(dTFunctionNameModifier15, z512113, null, null, (Function0) objX12, 14);
                    z36 = z512113;
                    if ((458752 & i7) == i11) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    boolean zY11113 = z37 | gapComposer2.y(context);
                    if ((i41 & 57344) == 16384) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zD = zY11113 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                    objX13 = gapComposer2.x();
                    if (zD) {
                        final ExoPlayer exoPlayer11112 = exoPlayer2;
                        final int i5116 = i46;
                        final boolean z5111111111111110 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z5111111111111110;
                                Context context2 = context;
                                MutableState mutableState112 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState112.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState112.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5116);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer11112);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z5111111111111110;
                        i48 = i5116;
                        gapComposer2.q(objX13);
                    } else {
                        final ExoPlayer exoPlayer11113 = exoPlayer2;
                        final int i5117 = i46;
                        final boolean z5111111111111111 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z5111111111111111;
                                Context context2 = context;
                                MutableState mutableState112 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState112.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState112.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5117);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer11113);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z5111111111111111;
                        i48 = i5117;
                        gapComposer2.q(objX13);
                    }
                    AndroidView_androidKt.a((Function1) objX13, modifierD14, null, gapComposer2, 0, 4);
                    ContentScale contentScale18 = contentScale3;
                    String str111113 = str9;
                    Function2 function2111111111112 = function12;
                    Function2 function2111111111113 = function13;
                    str12 = str111113;
                    function22 = function2111111111112;
                    function23 = function2111111111113;
                    contentScale4 = contentScale18;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str111113, function2111111111112, function2111111111113, contentScale18, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                }
                i45 = i48;
                contentScale2 = contentScale4;
                bool2 = bool5;
                function6 = function22;
                function7 = function23;
                gapComposer = gapComposer2;
                z11 = z33;
                z9 = z31;
                modifier3 = dTFunctionNameModifier;
                z10 = z34;
                function8 = function19;
                function10 = function20;
                f4 = f5;
                z8 = z39;
                str6 = str12;
                z13 = z36;
                function9 = function15;
                z12 = z32;
                function11 = function18;
                str7 = str11;
            } else {
                gapComposerH.D();
                z8 = z;
                contentScale2 = contentScale;
                z9 = z3;
                z10 = z5;
                bool2 = bool;
                function6 = function2;
                function7 = function3;
                function8 = function0;
                function9 = function1;
                function10 = function4;
                function11 = function5;
                gapComposer = gapComposerH;
                str6 = str5;
                f4 = f3;
                str7 = str4;
                modifier3 = modifier2;
                z11 = z2;
                z12 = z4;
                z13 = z6;
                i45 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: ib0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        int iA3 = RecomposeScopeImplKt.a(i5);
                        LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= ImageMetadata.EDGE_MODE;
        i11 = 131072;
        i13 = i6 & 64;
        if (i13 != 0) {
            i7 |= 1572864;
            str5 = str3;
        } else {
            str5 = str3;
            if ((i3 & 1572864) == 0) {
                if (gapComposerH.K(str5)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i7 |= i14;
            }
        }
        modifier2 = modifierE;
        i15 = i6 & 128;
        if (i15 != 0) {
            i7 |= 12582912;
        } else if ((i3 & 12582912) == 0) {
            if (gapComposerH.K(contentScale)) {
                i16 = 8388608;
            } else {
                i16 = 4194304;
            }
            i7 |= i16;
        }
        i17 = i6 & 256;
        if (i17 != 0) {
            i7 |= 100663296;
        } else if ((i3 & 100663296) == 0) {
            if (gapComposerH.b(z2)) {
                i18 = 67108864;
            } else {
                i18 = 33554432;
            }
            i7 |= i18;
        }
        i19 = i6 & 512;
        if (i19 != 0) {
            i7 |= 805306368;
        } else if ((i3 & 805306368) == 0) {
            if (gapComposerH.b(z3)) {
                i20 = PKIFailureInfo.duplicateCertReq;
            } else {
                i20 = 268435456;
            }
            i7 |= i20;
        }
        i21 = i6 & 1024;
        if (i21 != 0) {
            i22 = i4 | 6;
        } else if ((i4 & 6) == 0) {
            if (gapComposerH.b(z4)) {
                i23 = 4;
            } else {
                i23 = 2;
            }
            i22 = i4 | i23;
        } else {
            i22 = i4;
        }
        i24 = i6 & 2048;
        if (i24 != 0) {
            i22 |= 48;
        } else if ((i4 & 48) != 0) {
            if (gapComposerH.b(z5)) {
                i25 = 32;
            } else {
                i25 = 16;
            }
            i22 |= i25;
        }
        i26 = i22;
        i27 = i6 & 4096;
        if (i27 != 0) {
            i28 = i26 | KyberEngine.KyberPolyBytes;
        } else if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i28 = i26 | (gapComposerH.K(bool) ? 256 : 128);
        } else {
            i28 = i26;
        }
        i29 = i6 & 8192;
        if (i29 != 0) {
            i31 = i28 | 3072;
        } else {
            i30 = i28;
            if ((i4 & 3072) == 0) {
                i31 = i30 | (gapComposerH.b(z6) ? 2048 : 1024);
            } else {
                i31 = i30;
            }
        }
        i32 = i6 & 16384;
        if (i32 != 0) {
            i33 = i31;
            if ((i4 & 24576) == 0) {
                i33 |= gapComposerH.d(i2) ? 16384 : 8192;
            }
            i34 = i6 & 32768;
            if (i34 != 0) {
                i33 |= ImageMetadata.EDGE_MODE;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function2)) {
                    i35 = i11;
                } else {
                    i35 = 65536;
                }
                i33 |= i35;
            }
            i36 = i6 & 65536;
            if (i36 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                if (gapComposerH.y(function3)) {
                    i37 = 1048576;
                } else {
                    i37 = 524288;
                }
                i33 |= i37;
            }
            i38 = i6 & i11;
            if (i38 != 0) {
                i33 |= 12582912;
            } else if ((i4 & 12582912) == 0) {
                i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
            }
            i39 = i6 & 262144;
            if (i39 != 0) {
                i33 |= 100663296;
            } else if ((i4 & 100663296) == 0) {
                i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
            }
            i40 = i6 & 524288;
            if (i40 != 0) {
                i33 |= 805306368;
            } else if ((i4 & 805306368) == 0) {
                i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
            i41 = i33;
            i42 = i6 & 1048576;
            if (i42 != 0) {
                i43 = 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function5)) {
                    i44 = 4;
                } else {
                    i44 = 2;
                }
                i43 = i5 | i44;
            } else {
                i43 = i5;
            }
            if ((i7 & 306783379) != 306783378) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (gapComposerH.p(i7 & 1, z7)) {
                if (i49 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i50 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i8 != 0) {
                    f5 = null;
                } else {
                    f5 = f3;
                }
                if (i10 != 0) {
                    z14 = false;
                } else {
                    z14 = z;
                }
                if (i13 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i15 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale3 = ContentScale.Companion.d;
                } else {
                    contentScale3 = contentScale;
                }
                if (i17 != 0) {
                    z15 = true;
                } else {
                    z15 = z2;
                }
                if (i19 != 0) {
                    z16 = false;
                } else {
                    z16 = z3;
                }
                if (i21 != 0) {
                    z17 = true;
                } else {
                    z17 = z4;
                }
                if (i24 != 0) {
                    z18 = false;
                } else {
                    z18 = z5;
                }
                if (i27 != 0) {
                    bool3 = null;
                } else {
                    bool3 = bool;
                }
                if (i29 != 0) {
                    z19 = true;
                } else {
                    z19 = z6;
                }
                if (i32 != 0) {
                    i46 = 0;
                } else {
                    i46 = i2;
                }
                if (i34 != 0) {
                    function12 = null;
                } else {
                    function12 = function2;
                }
                if (i36 != 0) {
                    function13 = null;
                } else {
                    function13 = function3;
                }
                if (i38 != 0) {
                    function14 = null;
                } else {
                    function14 = function0;
                }
                if (i39 != 0) {
                    function15 = null;
                } else {
                    function15 = function1;
                }
                if (i40 != 0) {
                    function16 = null;
                } else {
                    function16 = function4;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i42 != 0) {
                    objX14 = gapComposerH.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new fa0(9);
                        gapComposerH.q(objX14);
                    }
                    function17 = (Function0) objX14;
                } else {
                    function17 = function5;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                    gapComposerH.L(1098171633);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    function24 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function24);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                    Boolean bool110 = bool3;
                    TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                    bool5 = bool110;
                    function15 = function15;
                    function20 = function16;
                    str11 = str8;
                    i48 = i46;
                    contentScale4 = contentScale3;
                    z39 = z14;
                    z33 = z15;
                    str12 = str9;
                    z31 = z16;
                    z32 = z17;
                    z34 = z18;
                    z36 = z19;
                    function22 = function12;
                    function23 = function13;
                    function19 = function14;
                    function18 = function17;
                } else {
                    bool4 = bool3;
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(1098674794);
                    context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                    mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                    objX = gapComposer2.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    objX2 = gapComposer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            z41 = true;
                        } else {
                            z41 = true;
                        }
                        objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                        gapComposer2.q(objX2);
                    }
                    mutableState2 = (MutableState) objX2;
                    objX3 = gapComposer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        cacheFactory = AppModule.f51474a;
                        if (cacheFactory != null) {
                            objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                        } else {
                            objX3 = null;
                        }
                        gapComposer2.q(objX3);
                    }
                    factory = (CacheDataSource.Factory) objX3;
                    objX4 = gapComposer2.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX4);
                    }
                    mutableState3 = (MutableState) objX4;
                    objX5 = gapComposer2.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        if (str9 == null) {
                            z40 = true;
                        } else {
                            z40 = true;
                        }
                        objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                        gapComposer2.q(objX5);
                    }
                    mutableState4 = (MutableState) objX5;
                    objX6 = gapComposer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.q(objX6);
                    }
                    mutableState5 = (MutableState) objX6;
                    boolean zY11114 = gapComposer2.y(exoPlayer);
                    if ((i43 & 14) == 4) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean z4111111111114 = zY11114 | z20;
                    if ((29360128 & i41) == 8388608) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    boolean z4111111111115 = z4111111111114 | z21;
                    if ((i41 & 1879048192) == 536870912) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    boolean z4111111111116 = z4111111111115 | z22;
                    if ((i7 & 896) == 256) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    boolean z4111111111117 = z4111111111116 | z23;
                    if ((i7 & 7168) == 2048) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean zY11115 = z4111111111117 | z24 | gapComposer2.y(factory);
                    if ((i7 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    boolean z4111111111118 = zY11115 | z25;
                    if ((i41 & 14) == 4) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean z4111111111119 = z4111111111118 | z26;
                    if ((i7 & 234881024) == 67108864) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    boolean z41111111111110 = z4111111111119 | z27;
                    if ((i41 & 896) == 256) {
                        z28 = true;
                    } else {
                        z28 = false;
                    }
                    boolean z41111111111111 = z28 | z41111111111110;
                    if ((i41 & 112) == 32) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z41111111111111 | z29;
                    objX7 = gapComposer2.x();
                    if (z30) {
                        Function0 function2111111111114 = function16;
                        String str111114 = str8;
                        boolean z5111111111111112 = z15;
                        boolean z5111111111111113 = z16;
                        boolean z5111111111111114 = z17;
                        boolean z5111111111111115 = z18;
                        Function0 function2111111111115 = function14;
                        Function0 function2111111111116 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111114, factory, z5111111111111113, z5111111111111114, z5111111111111112, bool4, z5111111111111115, mutableState3, function2111111111116, mutableState5, function2111111111115, function2111111111114, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str111114;
                        z31 = z5111111111111113;
                        z32 = z5111111111111114;
                        z33 = z5111111111111112;
                        bool5 = bool4;
                        z34 = z5111111111111115;
                        function18 = function2111111111116;
                        function19 = function2111111111115;
                        function20 = function2111111111114;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    } else {
                        Function0 function2111111111117 = function16;
                        String str111115 = str8;
                        boolean z5111111111111116 = z15;
                        boolean z5111111111111117 = z16;
                        boolean z5111111111111118 = z17;
                        boolean z5111111111111119 = z18;
                        Function0 function2111111111118 = function14;
                        Function0 function2111111111119 = function17;
                        objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111115, factory, z5111111111111117, z5111111111111118, z5111111111111116, bool4, z5111111111111119, mutableState3, function2111111111119, mutableState5, function2111111111118, function2111111111117, mutableState4, mutableState2, null);
                        exoPlayer2 = exoPlayer;
                        str10 = str;
                        str11 = str111115;
                        z31 = z5111111111111117;
                        z32 = z5111111111111118;
                        z33 = z5111111111111116;
                        bool5 = bool4;
                        z34 = z5111111111111119;
                        function18 = function2111111111119;
                        function19 = function2111111111118;
                        function20 = function2111111111117;
                        mutableState6 = mutableState2;
                        gapComposer2.q(objX7);
                    }
                    EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                    if (bool5 == null) {
                        gapComposer2.L(1103314377);
                        gapComposer2.Z(false);
                        str11 = str11;
                    } else {
                        gapComposer2.L(1103314378);
                        zBooleanValue = bool5.booleanValue();
                        zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                        objX8 = gapComposer2.x();
                        if (zB) {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        } else {
                            objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                            gapComposer2.q(objX8);
                        }
                        EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                        gapComposer2.Z(false);
                    }
                    objX9 = gapComposer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        final ExoPlayer exoPlayer11114 = exoPlayer2;
                        final MutableState mutableState112 = mutableState6;
                        final boolean z511211 = z32;
                        final boolean z512114 = z34;
                        objX9 = new LifecycleEventObserver() { // from class: gb0
                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                int i5118 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                                ExoPlayer exoPlayer11115 = exoPlayer11114;
                                MutableState mutableState113 = mutableState;
                                if (i5118 == 1) {
                                    mutableState113.setValue(Boolean.valueOf(((Boolean) mutableState112.getF10755b()).booleanValue() ? exoPlayer11115.isPlaying() : false));
                                    exoPlayer11115.pause();
                                    return;
                                }
                                if (i5118 != 2) {
                                    if (i5118 != 3) {
                                        return;
                                    }
                                    exoPlayer11115.release();
                                } else {
                                    if (z511211 || ((Boolean) mutableState113.getF10755b()).booleanValue()) {
                                        exoPlayer11115.c();
                                    }
                                    if (z512114) {
                                        exoPlayer11115.pause();
                                    }
                                }
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) objX9;
                    Object f10755b15 = mutableStateL.getF10755b();
                    zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                    objX10 = gapComposer2.x();
                    if (zK) {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    } else {
                        objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                        gapComposer2.q(objX10);
                    }
                    EffectsKt.c(f10755b15, (Function1) objX10, gapComposer2);
                    if (f5 != null) {
                        modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                    } else {
                        modifierA = dTFunctionNameModifier;
                    }
                    Modifier modifierO15 = dTFunctionNameModifier.o(modifierA);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierO15);
                    ComposeUiNode.b0.getClass();
                    function21 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function21);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                    i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                    objX11 = gapComposer2.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = SnapshotStateKt.g(null);
                        gapComposer2.q(objX11);
                    }
                    mutableState7 = (MutableState) objX11;
                    DTFunctionNameModifier dTFunctionNameModifier16 = new DTFunctionNameModifier("LvVideoPlayer");
                    if ((i41 & 234881024) == 67108864) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    zY = z35 | gapComposer2.y(exoPlayer2);
                    objX12 = gapComposer2.x();
                    if (zY) {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new t30(function15, exoPlayer2, 11);
                        gapComposer2.q(objX12);
                    }
                    boolean z512115 = z19;
                    Modifier modifierD15 = ClickableKt.d(dTFunctionNameModifier16, z512115, null, null, (Function0) objX12, 14);
                    z36 = z512115;
                    if ((458752 & i7) == i11) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    boolean zY11116 = z37 | gapComposer2.y(context);
                    if ((i41 & 57344) == 16384) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zD = zY11116 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                    objX13 = gapComposer2.x();
                    if (zD) {
                        final ExoPlayer exoPlayer11115 = exoPlayer2;
                        final int i5118 = i46;
                        final boolean z51111111111111110 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z51111111111111110;
                                Context context2 = context;
                                MutableState mutableState113 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState113.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState113.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5118);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer11115);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z51111111111111110;
                        i48 = i5118;
                        gapComposer2.q(objX13);
                    } else {
                        final ExoPlayer exoPlayer11116 = exoPlayer2;
                        final int i5119 = i46;
                        final boolean z51111111111111111 = z14;
                        objX13 = new Function1() { // from class: hb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                                ((Context) obj).getClass();
                                boolean z520 = z51111111111111111;
                                Context context2 = context;
                                MutableState mutableState113 = mutableState7;
                                if (z520) {
                                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                    xml.getClass();
                                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                    }
                                    mutableState113.setValue(Xml.asAttributeSet(xml));
                                }
                                PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState113.getF10755b());
                                PlayerControlView playerControlView = playerView.m;
                                if (playerControlView != null) {
                                    playerControlView.g();
                                }
                                playerView.setUseController(false);
                                playerView.setResizeMode(i5119);
                                playerView.setShutterBackgroundColor(i47);
                                playerView.setKeepContentOnPlayerReset(true);
                                SubtitleView subtitleView = playerView.getSubtitleView();
                                if (subtitleView != null) {
                                    subtitleView.setApplyEmbeddedFontSizes(false);
                                    subtitleView.a();
                                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                                }
                                playerView.setPlayer(exoPlayer11116);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                return playerView;
                            }
                        };
                        z39 = z51111111111111111;
                        i48 = i5119;
                        gapComposer2.q(objX13);
                    }
                    AndroidView_androidKt.a((Function1) objX13, modifierD15, null, gapComposer2, 0, 4);
                    ContentScale contentScale19 = contentScale3;
                    String str111116 = str9;
                    Function2 function21111111111110 = function12;
                    Function2 function21111111111111 = function13;
                    str12 = str111116;
                    function22 = function21111111111110;
                    function23 = function21111111111111;
                    contentScale4 = contentScale19;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str111116, function21111111111110, function21111111111111, contentScale19, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                }
                i45 = i48;
                contentScale2 = contentScale4;
                bool2 = bool5;
                function6 = function22;
                function7 = function23;
                gapComposer = gapComposer2;
                z11 = z33;
                z9 = z31;
                modifier3 = dTFunctionNameModifier;
                z10 = z34;
                function8 = function19;
                function10 = function20;
                f4 = f5;
                z8 = z39;
                str6 = str12;
                z13 = z36;
                function9 = function15;
                z12 = z32;
                function11 = function18;
                str7 = str11;
            } else {
                gapComposerH.D();
                z8 = z;
                contentScale2 = contentScale;
                z9 = z3;
                z10 = z5;
                bool2 = bool;
                function6 = function2;
                function7 = function3;
                function8 = function0;
                function9 = function1;
                function10 = function4;
                function11 = function5;
                gapComposer = gapComposerH;
                str6 = str5;
                f4 = f3;
                str7 = str4;
                modifier3 = modifier2;
                z11 = z2;
                z12 = z4;
                z13 = z6;
                i45 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: ib0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        int iA3 = RecomposeScopeImplKt.a(i5);
                        LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i33 = i31 | 24576;
        i34 = i6 & 32768;
        if (i34 != 0) {
            i33 |= ImageMetadata.EDGE_MODE;
        } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.y(function2)) {
                i35 = i11;
            } else {
                i35 = 65536;
            }
            i33 |= i35;
        }
        i36 = i6 & 65536;
        if (i36 != 0) {
            i33 |= 1572864;
        } else if ((i4 & 1572864) == 0) {
            if (gapComposerH.y(function3)) {
                i37 = 1048576;
            } else {
                i37 = 524288;
            }
            i33 |= i37;
        }
        i38 = i6 & i11;
        if (i38 != 0) {
            i33 |= 12582912;
        } else if ((i4 & 12582912) == 0) {
            i33 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        i39 = i6 & 262144;
        if (i39 != 0) {
            i33 |= 100663296;
        } else if ((i4 & 100663296) == 0) {
            i33 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        i40 = i6 & 524288;
        if (i40 != 0) {
            i33 |= 805306368;
        } else if ((i4 & 805306368) == 0) {
            i33 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        i41 = i33;
        i42 = i6 & 1048576;
        if (i42 != 0) {
            i43 = 6;
        } else if ((i5 & 6) == 0) {
            if (gapComposerH.y(function5)) {
                i44 = 4;
            } else {
                i44 = 2;
            }
            i43 = i5 | i44;
        } else {
            i43 = i5;
        }
        if ((i7 & 306783379) != 306783378) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (gapComposerH.p(i7 & 1, z7)) {
            if (i49 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LvVideoPlayer");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i50 != 0) {
                str8 = null;
            } else {
                str8 = str4;
            }
            if (i8 != 0) {
                f5 = null;
            } else {
                f5 = f3;
            }
            if (i10 != 0) {
                z14 = false;
            } else {
                z14 = z;
            }
            if (i13 != 0) {
                str9 = null;
            } else {
                str9 = str5;
            }
            if (i15 != 0) {
                ContentScale.f9447a.getClass();
                contentScale3 = ContentScale.Companion.d;
            } else {
                contentScale3 = contentScale;
            }
            if (i17 != 0) {
                z15 = true;
            } else {
                z15 = z2;
            }
            if (i19 != 0) {
                z16 = false;
            } else {
                z16 = z3;
            }
            if (i21 != 0) {
                z17 = true;
            } else {
                z17 = z4;
            }
            if (i24 != 0) {
                z18 = false;
            } else {
                z18 = z5;
            }
            if (i27 != 0) {
                bool3 = null;
            } else {
                bool3 = bool;
            }
            if (i29 != 0) {
                z19 = true;
            } else {
                z19 = z6;
            }
            if (i32 != 0) {
                i46 = 0;
            } else {
                i46 = i2;
            }
            if (i34 != 0) {
                function12 = null;
            } else {
                function12 = function2;
            }
            if (i36 != 0) {
                function13 = null;
            } else {
                function13 = function3;
            }
            if (i38 != 0) {
                function14 = null;
            } else {
                function14 = function0;
            }
            if (i39 != 0) {
                function15 = null;
            } else {
                function15 = function1;
            }
            if (i40 != 0) {
                function16 = null;
            } else {
                function16 = function4;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i42 != 0) {
                objX14 = gapComposerH.x();
                if (objX14 == composer$Companion$Empty$1) {
                    objX14 = new fa0(9);
                    gapComposerH.q(objX14);
                }
                function17 = (Function0) objX14;
            } else {
                function17 = function5;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                gapComposerH.L(1098171633);
                Alignment.f8582a.getClass();
                measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                function24 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function24);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                Boolean bool111 = bool3;
                TextKt.c("This is a video", BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LvVideoPlayer"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262140);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(true);
                gapComposer2.Z(false);
                bool5 = bool111;
                function15 = function15;
                function20 = function16;
                str11 = str8;
                i48 = i46;
                contentScale4 = contentScale3;
                z39 = z14;
                z33 = z15;
                str12 = str9;
                z31 = z16;
                z32 = z17;
                z34 = z18;
                z36 = z19;
                function22 = function12;
                function23 = function13;
                function19 = function14;
                function18 = function17;
            } else {
                bool4 = bool3;
                gapComposer2 = gapComposerH;
                gapComposer2.L(1098674794);
                context = (Context) gapComposer2.k(AndroidCompositionLocals_androidKt.f9936b);
                mutableStateL = SnapshotStateKt.l(gapComposer2.k(LocalLifecycleOwnerKt.f13562a), gapComposer2);
                objX = gapComposer2.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer2.q(objX);
                }
                mutableState = (MutableState) objX;
                objX2 = gapComposer2.x();
                if (objX2 == composer$Companion$Empty$1) {
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        z41 = true;
                    } else {
                        z41 = true;
                    }
                    objX2 = SnapshotStateKt.g(Boolean.valueOf(z41));
                    gapComposer2.q(objX2);
                }
                mutableState2 = (MutableState) objX2;
                objX3 = gapComposer2.x();
                if (objX3 == composer$Companion$Empty$1) {
                    cacheFactory = AppModule.f51474a;
                    if (cacheFactory != null) {
                        objX3 = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                    } else {
                        objX3 = null;
                    }
                    gapComposer2.q(objX3);
                }
                factory = (CacheDataSource.Factory) objX3;
                objX4 = gapComposer2.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = SnapshotStateKt.g(null);
                    gapComposer2.q(objX4);
                }
                mutableState3 = (MutableState) objX4;
                objX5 = gapComposer2.x();
                if (objX5 == composer$Companion$Empty$1) {
                    if (str9 == null) {
                        z40 = true;
                    } else {
                        z40 = true;
                    }
                    objX5 = SnapshotStateKt.g(Boolean.valueOf(z40));
                    gapComposer2.q(objX5);
                }
                mutableState4 = (MutableState) objX5;
                objX6 = gapComposer2.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer2.q(objX6);
                }
                mutableState5 = (MutableState) objX6;
                boolean zY11117 = gapComposer2.y(exoPlayer);
                if ((i43 & 14) == 4) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                boolean z41111111111112 = zY11117 | z20;
                if ((29360128 & i41) == 8388608) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                boolean z41111111111113 = z41111111111112 | z21;
                if ((i41 & 1879048192) == 536870912) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                boolean z41111111111114 = z41111111111113 | z22;
                if ((i7 & 896) == 256) {
                    z23 = true;
                } else {
                    z23 = false;
                }
                boolean z41111111111115 = z41111111111114 | z23;
                if ((i7 & 7168) == 2048) {
                    z24 = true;
                } else {
                    z24 = false;
                }
                boolean zY11118 = z41111111111115 | z24 | gapComposer2.y(factory);
                if ((i7 & 1879048192) == 536870912) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                boolean z41111111111116 = zY11118 | z25;
                if ((i41 & 14) == 4) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean z41111111111117 = z41111111111116 | z26;
                if ((i7 & 234881024) == 67108864) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                boolean z41111111111118 = z41111111111117 | z27;
                if ((i41 & 896) == 256) {
                    z28 = true;
                } else {
                    z28 = false;
                }
                boolean z41111111111119 = z28 | z41111111111118;
                if ((i41 & 112) == 32) {
                    z29 = true;
                } else {
                    z29 = false;
                }
                z30 = z41111111111119 | z29;
                objX7 = gapComposer2.x();
                if (z30) {
                    Function0 function21111111111112 = function16;
                    String str111117 = str8;
                    boolean z51111111111111112 = z15;
                    boolean z51111111111111113 = z16;
                    boolean z51111111111111114 = z17;
                    boolean z51111111111111115 = z18;
                    Function0 function21111111111113 = function14;
                    Function0 function21111111111114 = function17;
                    objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111117, factory, z51111111111111113, z51111111111111114, z51111111111111112, bool4, z51111111111111115, mutableState3, function21111111111114, mutableState5, function21111111111113, function21111111111112, mutableState4, mutableState2, null);
                    exoPlayer2 = exoPlayer;
                    str10 = str;
                    str11 = str111117;
                    z31 = z51111111111111113;
                    z32 = z51111111111111114;
                    z33 = z51111111111111112;
                    bool5 = bool4;
                    z34 = z51111111111111115;
                    function18 = function21111111111114;
                    function19 = function21111111111113;
                    function20 = function21111111111112;
                    mutableState6 = mutableState2;
                    gapComposer2.q(objX7);
                } else {
                    Function0 function21111111111115 = function16;
                    String str111118 = str8;
                    boolean z51111111111111116 = z15;
                    boolean z51111111111111117 = z16;
                    boolean z51111111111111118 = z17;
                    boolean z51111111111111119 = z18;
                    Function0 function21111111111116 = function14;
                    Function0 function21111111111117 = function17;
                    objX7 = new LvVideoPlayerKt$LvVideoPlayer$3$1(exoPlayer, str, str111118, factory, z51111111111111117, z51111111111111118, z51111111111111116, bool4, z51111111111111119, mutableState3, function21111111111117, mutableState5, function21111111111116, function21111111111115, mutableState4, mutableState2, null);
                    exoPlayer2 = exoPlayer;
                    str10 = str;
                    str11 = str111118;
                    z31 = z51111111111111117;
                    z32 = z51111111111111118;
                    z33 = z51111111111111116;
                    bool5 = bool4;
                    z34 = z51111111111111119;
                    function18 = function21111111111117;
                    function19 = function21111111111116;
                    function20 = function21111111111115;
                    mutableState6 = mutableState2;
                    gapComposer2.q(objX7);
                }
                EffectsKt.g(str10, str11, (Function2) objX7, gapComposer2);
                if (bool5 == null) {
                    gapComposer2.L(1103314377);
                    gapComposer2.Z(false);
                    str11 = str11;
                } else {
                    gapComposer2.L(1103314378);
                    zBooleanValue = bool5.booleanValue();
                    zB = gapComposer2.b(zBooleanValue) | gapComposer2.y(exoPlayer2);
                    objX8 = gapComposer2.x();
                    if (zB) {
                        objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                        gapComposer2.q(objX8);
                    } else {
                        objX8 = new LvVideoPlayerKt$LvVideoPlayer$4$1$1(zBooleanValue, exoPlayer2, mutableState6, null);
                        gapComposer2.q(objX8);
                    }
                    EffectsKt.e(gapComposer2, bool5, (Function2) objX8);
                    gapComposer2.Z(false);
                }
                objX9 = gapComposer2.x();
                if (objX9 == composer$Companion$Empty$1) {
                    final ExoPlayer exoPlayer11117 = exoPlayer2;
                    final MutableState mutableState113 = mutableState6;
                    final boolean z511212 = z32;
                    final boolean z512116 = z34;
                    objX9 = new LifecycleEventObserver() { // from class: gb0
                        @Override // androidx.lifecycle.LifecycleEventObserver
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            int i51110 = LvVideoPlayerKt.WhenMappings.f50928a[event.ordinal()];
                            ExoPlayer exoPlayer11118 = exoPlayer11117;
                            MutableState mutableState114 = mutableState;
                            if (i51110 == 1) {
                                mutableState114.setValue(Boolean.valueOf(((Boolean) mutableState113.getF10755b()).booleanValue() ? exoPlayer11118.isPlaying() : false));
                                exoPlayer11118.pause();
                                return;
                            }
                            if (i51110 != 2) {
                                if (i51110 != 3) {
                                    return;
                                }
                                exoPlayer11118.release();
                            } else {
                                if (z511212 || ((Boolean) mutableState114.getF10755b()).booleanValue()) {
                                    exoPlayer11118.c();
                                }
                                if (z512116) {
                                    exoPlayer11118.pause();
                                }
                            }
                        }
                    };
                    gapComposer2.q(objX9);
                }
                lifecycleEventObserver = (LifecycleEventObserver) objX9;
                Object f10755b16 = mutableStateL.getF10755b();
                zK = gapComposer2.K(mutableStateL) | gapComposer2.y(lifecycleEventObserver) | gapComposer2.y(exoPlayer2);
                objX10 = gapComposer2.x();
                if (zK) {
                    objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                    gapComposer2.q(objX10);
                } else {
                    objX10 = new jx(mutableStateL, lifecycleEventObserver, exoPlayer2, 18);
                    gapComposer2.q(objX10);
                }
                EffectsKt.c(f10755b16, (Function1) objX10, gapComposer2);
                if (f5 != null) {
                    modifierA = AspectRatioKt.a(dTFunctionNameModifier, f5.floatValue(), true);
                } else {
                    modifierA = dTFunctionNameModifier;
                }
                Modifier modifierO16 = dTFunctionNameModifier.o(modifierA);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU = gapComposer2.U();
                modifierC = ComposedModifierKt.c(gapComposer2, modifierO16);
                ComposeUiNode.b0.getClass();
                function21 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function21);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                i47 = ColorKt.i(LVAppDesignKitTheme.c(gapComposer2).f48361b.f48374a);
                objX11 = gapComposer2.x();
                if (objX11 == composer$Companion$Empty$1) {
                    objX11 = SnapshotStateKt.g(null);
                    gapComposer2.q(objX11);
                }
                mutableState7 = (MutableState) objX11;
                DTFunctionNameModifier dTFunctionNameModifier17 = new DTFunctionNameModifier("LvVideoPlayer");
                if ((i41 & 234881024) == 67108864) {
                    z35 = true;
                } else {
                    z35 = false;
                }
                zY = z35 | gapComposer2.y(exoPlayer2);
                objX12 = gapComposer2.x();
                if (zY) {
                    objX12 = new t30(function15, exoPlayer2, 11);
                    gapComposer2.q(objX12);
                } else {
                    objX12 = new t30(function15, exoPlayer2, 11);
                    gapComposer2.q(objX12);
                }
                boolean z512117 = z19;
                Modifier modifierD16 = ClickableKt.d(dTFunctionNameModifier17, z512117, null, null, (Function0) objX12, 14);
                z36 = z512117;
                if ((458752 & i7) == i11) {
                    z37 = true;
                } else {
                    z37 = false;
                }
                boolean zY11119 = z37 | gapComposer2.y(context);
                if ((i41 & 57344) == 16384) {
                    z38 = true;
                } else {
                    z38 = false;
                }
                zD = zY11119 | z38 | gapComposer2.d(i47) | gapComposer2.y(exoPlayer2);
                objX13 = gapComposer2.x();
                if (zD) {
                    final ExoPlayer exoPlayer11118 = exoPlayer2;
                    final int i51110 = i46;
                    final boolean z511111111111111110 = z14;
                    objX13 = new Function1() { // from class: hb0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                            ((Context) obj).getClass();
                            boolean z520 = z511111111111111110;
                            Context context2 = context;
                            MutableState mutableState114 = mutableState7;
                            if (z520) {
                                XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                xml.getClass();
                                for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                }
                                mutableState114.setValue(Xml.asAttributeSet(xml));
                            }
                            PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState114.getF10755b());
                            PlayerControlView playerControlView = playerView.m;
                            if (playerControlView != null) {
                                playerControlView.g();
                            }
                            playerView.setUseController(false);
                            playerView.setResizeMode(i51110);
                            playerView.setShutterBackgroundColor(i47);
                            playerView.setKeepContentOnPlayerReset(true);
                            SubtitleView subtitleView = playerView.getSubtitleView();
                            if (subtitleView != null) {
                                subtitleView.setApplyEmbeddedFontSizes(false);
                                subtitleView.a();
                                subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                            }
                            playerView.setPlayer(exoPlayer11118);
                            playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            return playerView;
                        }
                    };
                    z39 = z511111111111111110;
                    i48 = i51110;
                    gapComposer2.q(objX13);
                } else {
                    final ExoPlayer exoPlayer11119 = exoPlayer2;
                    final int i51111 = i46;
                    final boolean z511111111111111111 = z14;
                    objX13 = new Function1() { // from class: hb0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) throws XmlPullParserException, IOException {
                            ((Context) obj).getClass();
                            boolean z520 = z511111111111111111;
                            Context context2 = context;
                            MutableState mutableState114 = mutableState7;
                            if (z520) {
                                XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                                xml.getClass();
                                for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                                }
                                mutableState114.setValue(Xml.asAttributeSet(xml));
                            }
                            PlayerView playerView = new PlayerView(context2, (AttributeSet) mutableState114.getF10755b());
                            PlayerControlView playerControlView = playerView.m;
                            if (playerControlView != null) {
                                playerControlView.g();
                            }
                            playerView.setUseController(false);
                            playerView.setResizeMode(i51111);
                            playerView.setShutterBackgroundColor(i47);
                            playerView.setKeepContentOnPlayerReset(true);
                            SubtitleView subtitleView = playerView.getSubtitleView();
                            if (subtitleView != null) {
                                subtitleView.setApplyEmbeddedFontSizes(false);
                                subtitleView.a();
                                subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context2, R.color.transparent_background), 0, 0, 0, null));
                            }
                            playerView.setPlayer(exoPlayer11119);
                            playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            return playerView;
                        }
                    };
                    z39 = z511111111111111111;
                    i48 = i51111;
                    gapComposer2.q(objX13);
                }
                AndroidView_androidKt.a((Function1) objX13, modifierD16, null, gapComposer2, 0, 4);
                ContentScale contentScale110 = contentScale3;
                String str111119 = str9;
                Function2 function21111111111118 = function12;
                Function2 function21111111111119 = function13;
                str12 = str111119;
                function22 = function21111111111118;
                function23 = function21111111111119;
                contentScale4 = contentScale110;
                ThemeKt.a(null, ComposableLambdaKt.b(-2123321115, new u1(str111119, function21111111111118, function21111111111119, contentScale110, mutableState4, mutableState5), gapComposer2), gapComposer2, 48);
                gapComposer2.Z(true);
                gapComposer2.Z(false);
            }
            i45 = i48;
            contentScale2 = contentScale4;
            bool2 = bool5;
            function6 = function22;
            function7 = function23;
            gapComposer = gapComposer2;
            z11 = z33;
            z9 = z31;
            modifier3 = dTFunctionNameModifier;
            z10 = z34;
            function8 = function19;
            function10 = function20;
            f4 = f5;
            z8 = z39;
            str6 = str12;
            z13 = z36;
            function9 = function15;
            z12 = z32;
            function11 = function18;
            str7 = str11;
        } else {
            gapComposerH.D();
            z8 = z;
            contentScale2 = contentScale;
            z9 = z3;
            z10 = z5;
            bool2 = bool;
            function6 = function2;
            function7 = function3;
            function8 = function0;
            function9 = function1;
            function10 = function4;
            function11 = function5;
            gapComposer = gapComposerH;
            str6 = str5;
            f4 = f3;
            str7 = str4;
            modifier3 = modifier2;
            z11 = z2;
            z12 = z4;
            z13 = z6;
            i45 = i2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ib0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    int iA3 = RecomposeScopeImplKt.a(i5);
                    LvVideoPlayerKt.b(modifier3, exoPlayer, str, str7, f4, z8, str6, contentScale2, z11, z9, z12, z10, bool2, z13, i45, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2, iA3, i6);
                    return Unit.f71739a;
                }
            };
        }
    }
}
