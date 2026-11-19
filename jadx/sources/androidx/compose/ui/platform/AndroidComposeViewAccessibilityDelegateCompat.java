package androidx.compose.ui.platform;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ClipDescription;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.text.SpannableString;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.ArraySet;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntListKt;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.platform.AndroidAccessibilitySpannableString_androidKt;
import androidx.compose.ui.text.platform.URLSpanCache;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.lifecycle.Lifecycle;
import defpackage.az;
import defpackage.md;
import defpackage.mt;
import defpackage.os;
import defpackage.pq0;
import defpackage.v40;
import defpackage.z1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003\t\n\u000bB\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;", "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;", "Landroidx/compose/ui/platform/AndroidComposeView;", "view", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;)V", "Companion", "PendingTextTraversedEvent", "ComposeAccessibilityNodeProvider", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat implements View.OnAttachStateChangeListener, android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener, android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener {
    public static final MutableIntList O;
    public MutableIntObjectMap A;
    public final MutableIntSet B;
    public final MutableIntIntMap C;
    public final MutableIntIntMap D;
    public final String E;
    public final String F;
    public final URLSpanCache G;
    public final MutableIntObjectMap H;
    public SemanticsNodeCopy I;
    public boolean J;
    public final MutableIntIntMap K;
    public final z1 L;
    public final ArrayList M;
    public final Function1 N;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AndroidComposeView f9899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9900f = Integer.MIN_VALUE;
    public final Function1 g = new AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final android.view.accessibility.AccessibilityManager f9901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f9902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f9903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ComposeAccessibilityNodeProvider f9904k;
    public int l;
    public int m;
    public AccessibilityNodeInfoCompat n;
    public AccessibilityNodeInfoCompat o;
    public boolean p;
    public final MutableIntObjectMap q;
    public final MutableIntObjectMap r;
    public final SparseArrayCompat s;
    public final SparseArrayCompat t;
    public int u;
    public Integer v;
    public final ArraySet w;
    public final BufferedChannel x;
    public boolean y;
    public PendingTextTraversedEvent z;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0007R\u0014\u0010\u0012\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0007R\u0014\u0010\u0013\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0007R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00188\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;", "", "", "InvalidId", "I", "", "ClassName", "Ljava/lang/String;", "TextFieldClassName", "TextClassName", "LogTag", "ExtraDataTestTagKey", "ExtraDataIdKey", "ExtraDataShapeTypeKey", "ExtraDataShapeTypeRectangle", "ExtraDataShapeTypeRounded", "ExtraDataShapeTypeGeneric", "ExtraDataShapeRectKey", "ExtraDataShapeRectCornersKey", "ExtraDataShapeRegionKey", "ParcelSafeTextLength", "AccessibilityCursorPositionUndefined", "AccessibilitySliderStepsCount", "CONTENT_CHANGE_TYPE_CHECKED", "", "TextTraversedEventTimeoutMillis", "J", "Landroidx/collection/IntList;", "AccessibilityActionsResourceIds", "Landroidx/collection/IntList;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;", "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ComposeAccessibilityNodeProvider extends AccessibilityNodeProviderCompat {
        public ComposeAccessibilityNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final void a(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.O;
            AndroidComposeViewAccessibilityDelegateCompat.this.j(i2, accessibilityNodeInfoCompat, str, bundle);
        }

        /* JADX WARN: Code duplicated, block: B:100:0x025b  */
        /* JADX WARN: Code duplicated, block: B:102:0x025f  */
        /* JADX WARN: Code duplicated, block: B:103:0x0264  */
        /* JADX WARN: Code duplicated, block: B:105:0x0268  */
        /* JADX WARN: Code duplicated, block: B:108:0x0276  */
        /* JADX WARN: Code duplicated, block: B:111:0x0284  */
        /* JADX WARN: Code duplicated, block: B:114:0x028c  */
        /* JADX WARN: Code duplicated, block: B:117:0x0293  */
        /* JADX WARN: Code duplicated, block: B:119:0x029e  */
        /* JADX WARN: Code duplicated, block: B:121:0x02a8  */
        /* JADX WARN: Code duplicated, block: B:122:0x02af  */
        /* JADX WARN: Code duplicated, block: B:126:0x02bd  */
        /* JADX WARN: Code duplicated, block: B:128:0x02c0  */
        /* JADX WARN: Code duplicated, block: B:131:0x02d9 A[LOOP:1: B:127:0x02be->B:131:0x02d9, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:134:0x02e1  */
        /* JADX WARN: Code duplicated, block: B:137:0x02ef  */
        /* JADX WARN: Code duplicated, block: B:140:0x02fc  */
        /* JADX WARN: Code duplicated, block: B:143:0x0302  */
        /* JADX WARN: Code duplicated, block: B:148:0x032f  */
        /* JADX WARN: Code duplicated, block: B:149:0x0334  */
        /* JADX WARN: Code duplicated, block: B:152:0x034f  */
        /* JADX WARN: Code duplicated, block: B:154:0x0362  */
        /* JADX WARN: Code duplicated, block: B:155:0x0367  */
        /* JADX WARN: Code duplicated, block: B:156:0x0369  */
        /* JADX WARN: Code duplicated, block: B:159:0x037b  */
        /* JADX WARN: Code duplicated, block: B:160:0x0383  */
        /* JADX WARN: Code duplicated, block: B:163:0x038e  */
        /* JADX WARN: Code duplicated, block: B:166:0x039c  */
        /* JADX WARN: Code duplicated, block: B:168:0x03a5  */
        /* JADX WARN: Code duplicated, block: B:169:0x03a7  */
        /* JADX WARN: Code duplicated, block: B:175:0x03bd  */
        /* JADX WARN: Code duplicated, block: B:177:0x03d2  */
        /* JADX WARN: Code duplicated, block: B:178:0x03d5  */
        /* JADX WARN: Code duplicated, block: B:184:0x03e1  */
        /* JADX WARN: Code duplicated, block: B:186:0x03e5 A[PHI: r22
          0x03e5: PHI (r22v5 boolean) = (r22v3 boolean), (r22v6 boolean) binds: [B:179:0x03d9, B:185:0x03e3] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:189:0x03ea A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:193:0x03f1  */
        /* JADX WARN: Code duplicated, block: B:196:0x03fb  */
        /* JADX WARN: Code duplicated, block: B:200:0x040f  */
        /* JADX WARN: Code duplicated, block: B:203:0x041f  */
        /* JADX WARN: Code duplicated, block: B:205:0x0429  */
        /* JADX WARN: Code duplicated, block: B:208:0x043f  */
        /* JADX WARN: Code duplicated, block: B:211:0x0451  */
        /* JADX WARN: Code duplicated, block: B:213:0x045b  */
        /* JADX WARN: Code duplicated, block: B:216:0x0471  */
        /* JADX WARN: Code duplicated, block: B:219:0x0488  */
        /* JADX WARN: Code duplicated, block: B:222:0x049e  */
        /* JADX WARN: Code duplicated, block: B:226:0x04b2  */
        /* JADX WARN: Code duplicated, block: B:227:0x04b9  */
        /* JADX WARN: Code duplicated, block: B:229:0x04bc  */
        /* JADX WARN: Code duplicated, block: B:232:0x04cf  */
        /* JADX WARN: Code duplicated, block: B:244:0x051b  */
        /* JADX WARN: Code duplicated, block: B:260:0x0556  */
        /* JADX WARN: Code duplicated, block: B:263:0x056f  */
        /* JADX WARN: Code duplicated, block: B:271:0x058b  */
        /* JADX WARN: Code duplicated, block: B:274:0x0598  */
        /* JADX WARN: Code duplicated, block: B:277:0x05b0  */
        /* JADX WARN: Code duplicated, block: B:279:0x05b9  */
        /* JADX WARN: Code duplicated, block: B:282:0x05d3  */
        /* JADX WARN: Code duplicated, block: B:284:0x05e1  */
        /* JADX WARN: Code duplicated, block: B:286:0x05eb  */
        /* JADX WARN: Code duplicated, block: B:288:0x05fb  */
        /* JADX WARN: Code duplicated, block: B:289:0x05ff  */
        /* JADX WARN: Code duplicated, block: B:293:0x060a A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:294:0x060c A[LOOP:2: B:280:0x05be->B:294:0x060c, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:295:0x0613  */
        /* JADX WARN: Code duplicated, block: B:298:0x0622  */
        /* JADX WARN: Code duplicated, block: B:300:0x062e  */
        /* JADX WARN: Code duplicated, block: B:301:0x0634  */
        /* JADX WARN: Code duplicated, block: B:304:0x0642  */
        /* JADX WARN: Code duplicated, block: B:307:0x0660  */
        /* JADX WARN: Code duplicated, block: B:311:0x067a  */
        /* JADX WARN: Code duplicated, block: B:314:0x067f  */
        /* JADX WARN: Code duplicated, block: B:317:0x0698  */
        /* JADX WARN: Code duplicated, block: B:320:0x069d  */
        /* JADX WARN: Code duplicated, block: B:323:0x06a8  */
        /* JADX WARN: Code duplicated, block: B:328:0x06cd  */
        /* JADX WARN: Code duplicated, block: B:329:0x06da  */
        /* JADX WARN: Code duplicated, block: B:331:0x06eb  */
        /* JADX WARN: Code duplicated, block: B:333:0x06fa  */
        /* JADX WARN: Code duplicated, block: B:335:0x070e  */
        /* JADX WARN: Code duplicated, block: B:339:0x071a  */
        /* JADX WARN: Code duplicated, block: B:341:0x0720  */
        /* JADX WARN: Code duplicated, block: B:342:0x0722  */
        /* JADX WARN: Code duplicated, block: B:344:0x0728  */
        /* JADX WARN: Code duplicated, block: B:346:0x072e  */
        /* JADX WARN: Code duplicated, block: B:350:0x074d A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:353:0x075b  */
        /* JADX WARN: Code duplicated, block: B:359:0x077d  */
        /* JADX WARN: Code duplicated, block: B:362:0x0787  */
        /* JADX WARN: Code duplicated, block: B:364:0x078d  */
        /* JADX WARN: Code duplicated, block: B:366:0x0798  */
        /* JADX WARN: Code duplicated, block: B:367:0x079b  */
        /* JADX WARN: Code duplicated, block: B:371:0x07a6  */
        /* JADX WARN: Code duplicated, block: B:373:0x07b1  */
        /* JADX WARN: Code duplicated, block: B:374:0x07b4  */
        /* JADX WARN: Code duplicated, block: B:378:0x07c3 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:381:0x07d1  */
        /* JADX WARN: Code duplicated, block: B:387:0x07f3  */
        /* JADX WARN: Code duplicated, block: B:390:0x07fd  */
        /* JADX WARN: Code duplicated, block: B:392:0x0803  */
        /* JADX WARN: Code duplicated, block: B:395:0x0813  */
        /* JADX WARN: Code duplicated, block: B:398:0x082b  */
        /* JADX WARN: Code duplicated, block: B:401:0x0835  */
        /* JADX WARN: Code duplicated, block: B:404:0x083a  */
        /* JADX WARN: Code duplicated, block: B:406:0x0844  */
        /* JADX WARN: Code duplicated, block: B:409:0x085b  */
        /* JADX WARN: Code duplicated, block: B:412:0x0872  */
        /* JADX WARN: Code duplicated, block: B:415:0x0889  */
        /* JADX WARN: Code duplicated, block: B:418:0x08a7  */
        /* JADX WARN: Code duplicated, block: B:420:0x08b1  */
        /* JADX WARN: Code duplicated, block: B:423:0x08c7  */
        /* JADX WARN: Code duplicated, block: B:426:0x08dd  */
        /* JADX WARN: Code duplicated, block: B:429:0x08f3  */
        /* JADX WARN: Code duplicated, block: B:431:0x0903  */
        /* JADX WARN: Code duplicated, block: B:433:0x0915  */
        /* JADX WARN: Code duplicated, block: B:436:0x0924  */
        /* JADX WARN: Code duplicated, block: B:438:0x093b A[LOOP:4: B:437:0x0939->B:438:0x093b, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:441:0x0953  */
        /* JADX WARN: Code duplicated, block: B:443:0x096a  */
        /* JADX WARN: Code duplicated, block: B:445:0x097f  */
        /* JADX WARN: Code duplicated, block: B:448:0x0986 A[LOOP:6: B:444:0x097d->B:448:0x0986, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:451:0x098e  */
        /* JADX WARN: Code duplicated, block: B:453:0x099a  */
        /* JADX WARN: Code duplicated, block: B:457:0x09ad A[LOOP:7: B:456:0x09ab->B:457:0x09ad, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:459:0x09cf  */
        /* JADX WARN: Code duplicated, block: B:461:0x09db A[LOOP:8: B:460:0x09d9->B:461:0x09db, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:463:0x0a03  */
        /* JADX WARN: Code duplicated, block: B:466:0x0a17  */
        /* JADX WARN: Code duplicated, block: B:469:0x0a2d  */
        /* JADX WARN: Code duplicated, block: B:471:0x0a37  */
        /* JADX WARN: Code duplicated, block: B:472:0x0a3b  */
        /* JADX WARN: Code duplicated, block: B:474:0x0a45  */
        /* JADX WARN: Code duplicated, block: B:477:0x0a4f  */
        /* JADX WARN: Code duplicated, block: B:482:0x0a6d  */
        /* JADX WARN: Code duplicated, block: B:494:0x01f8 A[EDGE_INSN: B:494:0x01f8->B:87:0x01f8 BREAK  A[LOOP:0: B:65:0x0189->B:86:0x01f1], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:496:0x01f1 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:497:0x01f1 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:498:0x02ce A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:499:0x02de A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:500:0x0615 A[EDGE_INSN: B:500:0x0615->B:296:0x0615 BREAK  A[LOOP:2: B:280:0x05be->B:294:0x060c], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:501:0x0615 A[EDGE_INSN: B:501:0x0615->B:296:0x0615 BREAK  A[LOOP:2: B:280:0x05be->B:294:0x060c], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:504:0x0601 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:510:0x098b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:511:0x098c A[EDGE_INSN: B:511:0x098c->B:450:0x098c BREAK  A[LOOP:6: B:444:0x097d->B:448:0x0986], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:516:0x0711 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:67:0x018d  */
        /* JADX WARN: Code duplicated, block: B:69:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:72:0x01bb A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:73:0x01bd  */
        /* JADX WARN: Code duplicated, block: B:74:0x01c1  */
        /* JADX WARN: Code duplicated, block: B:76:0x01cd  */
        /* JADX WARN: Code duplicated, block: B:7:0x002e  */
        /* JADX WARN: Code duplicated, block: B:81:0x01e4  */
        /* JADX WARN: Code duplicated, block: B:83:0x01e7 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:84:0x01e9  */
        /* JADX WARN: Code duplicated, block: B:89:0x01fd  */
        /* JADX WARN: Code duplicated, block: B:90:0x0206  */
        /* JADX WARN: Code duplicated, block: B:93:0x0215  */
        /* JADX WARN: Code duplicated, block: B:94:0x022a  */
        /* JADX WARN: Code duplicated, block: B:97:0x0236  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat b(int i2) {
            android.view.accessibility.AccessibilityManager accessibilityManager;
            SparseArrayCompat sparseArrayCompat;
            boolean zA;
            List listJ;
            int size;
            int i3;
            int i4;
            AccessibilityNodeInfo accessibilityNodeInfo;
            AnnotatedString annotatedStringF;
            SpannableString spannableString;
            SemanticsPropertyKey semanticsPropertyKey;
            ToggleableState toggleableState;
            Boolean bool;
            List list;
            String str;
            String str2;
            Boolean bool2;
            Integer num;
            int iIntValue;
            SemanticsPropertyKey semanticsPropertyKey2;
            boolean z;
            SemanticsNode semanticsNodeL;
            LiveRegionMode liveRegionMode;
            AccessibilityAction accessibilityAction;
            AccessibilityAction accessibilityAction2;
            AccessibilityAction accessibilityAction3;
            String strT;
            LayoutNode layoutNode;
            ArrayList arrayList;
            CharSequence charSequenceG;
            MutableScatterSet mutableScatterSet;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat;
            ProgressBarRangeInfo progressBarRangeInfo;
            CollectionInfo collectionInfo;
            ArrayList arrayList2;
            boolean zA2;
            int size2;
            int size3;
            List listJ2;
            int size4;
            int i5;
            SemanticsNode semanticsNode;
            ScrollAxisRange scrollAxisRange;
            ScrollAxisRange scrollAxisRange2;
            Role role;
            int i6;
            int iB;
            Bundle bundle;
            int iB2;
            String str3;
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
            AndroidViewHolder androidViewHolderC;
            AndroidViewHolder androidViewHolderC2;
            AccessibilityAction accessibilityAction4;
            AccessibilityAction accessibilityAction5;
            AccessibilityAction accessibilityAction6;
            SemanticsPropertyKey semanticsPropertyKey3;
            List list2;
            SparseArrayCompat sparseArrayCompat2;
            MutableObjectIntMap mutableObjectIntMapA;
            SparseArrayCompat sparseArrayCompat3;
            int size5;
            int i7;
            MutableObjectIntMap mutableObjectIntMap;
            MutableIntList mutableIntList;
            int[] iArr;
            int i8;
            int i9;
            ArrayList arrayList3;
            int size6;
            int i10;
            int size7;
            int i11;
            CustomAccessibilityAction customAccessibilityAction;
            String str4;
            String str5;
            int iB3;
            int[] iArr2;
            int i12;
            int i13;
            int i14;
            AccessibilityAction accessibilityAction7;
            AccessibilityAction accessibilityAction8;
            AccessibilityAction accessibilityAction9;
            AccessibilityAction accessibilityAction10;
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2;
            AccessibilityAction accessibilityAction11;
            float f2;
            ClosedFloatingPointRange closedFloatingPointRange;
            SemanticsPropertyKey semanticsPropertyKey4;
            float fFloatValue;
            float fFloatValue2;
            float fFloatValue3;
            float fFloatValue4;
            Object[] objArr;
            long[] jArr;
            int length;
            int i15;
            long j2;
            int i16;
            int i17;
            int i18;
            String str6;
            AccessibilityAction accessibilityAction12;
            AccessibilityAction accessibilityAction13;
            AccessibilityAction accessibilityAction14;
            AccessibilityAction accessibilityAction15;
            ClipDescription primaryClipDescription;
            boolean zHasMimeType;
            boolean zC;
            int i19;
            boolean z2;
            boolean z3;
            boolean z4;
            int i20;
            int i21;
            int iB4;
            SemanticsNode semanticsNodeL2;
            boolean zBooleanValue;
            SemanticsConfiguration semanticsConfiguration;
            SemanticsPropertyKey semanticsPropertyKey5;
            SemanticsNode semanticsNode2;
            boolean zBooleanValue2;
            SemanticsNode semanticsNode3;
            IntObjectMap intObjectMapS;
            int i22;
            AndroidViewHolder androidViewHolder;
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
            boolean zC2;
            SemanticsNode semanticsNode4;
            SemanticsConfiguration semanticsConfigurationK;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat2 = AndroidComposeViewAccessibilityDelegateCompat.this;
            android.view.accessibility.AccessibilityManager accessibilityManager2 = androidComposeViewAccessibilityDelegateCompat2.f9901h;
            android.view.accessibility.AccessibilityManager accessibilityManager3 = androidComposeViewAccessibilityDelegateCompat2.f9901h;
            AndroidComposeView androidComposeView = androidComposeViewAccessibilityDelegateCompat2.f9899e;
            if (androidComposeView.getComposeViewContext().f10011c.getD().getF13454i() == Lifecycle.State.DESTROYED) {
                if (accessibilityManager3.isEnabled()) {
                    accessibilityNodeInfoCompat = null;
                } else {
                    accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                }
                i6 = i2;
            } else {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat2.s().b(i2);
                if (semanticsNodeWithAdjustedBounds2 == null) {
                    if (accessibilityManager3.isEnabled()) {
                        accessibilityNodeInfoCompat = null;
                    } else {
                        accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                    }
                    i6 = i2;
                } else {
                    SemanticsNode semanticsNode5 = semanticsNodeWithAdjustedBounds2.f10325a;
                    SemanticsConfiguration semanticsConfigurationK2 = semanticsNode5.k();
                    LayoutNode layoutNode2 = semanticsNode5.f10320c;
                    SemanticsConfiguration semanticsConfiguration2 = semanticsNode5.d;
                    boolean zC3 = Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfigurationK2, SemanticsProperties.o), Boolean.TRUE);
                    if (!zC3 || AccessibilityManagerCompat.a(accessibilityManager2)) {
                        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
                        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(accessibilityNodeInfoObtain);
                        accessibilityNodeInfoCompat2.h(zC3);
                        if (i2 == -1) {
                            Object parentForAccessibility = androidComposeView.getParentForAccessibility();
                            View view = parentForAccessibility instanceof View ? (View) parentForAccessibility : null;
                            accessibilityNodeInfoCompat2.f12268b = -1;
                            accessibilityNodeInfoObtain.setParent(view);
                        } else {
                            SemanticsNode semanticsNodeL3 = semanticsNode5.l();
                            Integer numValueOf = semanticsNodeL3 != null ? Integer.valueOf(semanticsNodeL3.f10322f) : null;
                            if (numValueOf == null) {
                                InlineClassHelperKt.d("semanticsNode " + i2 + " has null parent");
                                os.d();
                                return null;
                            }
                            int iIntValue2 = numValueOf.intValue();
                            if (iIntValue2 == androidComposeView.getSemanticsOwner().a().f10322f) {
                                iIntValue2 = -1;
                            }
                            accessibilityNodeInfoCompat2.f12268b = iIntValue2;
                            accessibilityNodeInfoObtain.setParent(androidComposeView, iIntValue2);
                        }
                        accessibilityNodeInfoCompat2.f12269c = i2;
                        accessibilityNodeInfoObtain.setSource(androidComposeView, i2);
                        accessibilityNodeInfoObtain.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat2.k(semanticsNodeWithAdjustedBounds2));
                        MutableIntList mutableIntList2 = AndroidComposeViewAccessibilityDelegateCompat.O;
                        MutableIntIntMap mutableIntIntMap = androidComposeViewAccessibilityDelegateCompat2.K;
                        SparseArrayCompat sparseArrayCompat4 = androidComposeViewAccessibilityDelegateCompat2.t;
                        Resources resources = androidComposeView.getContext().getResources();
                        accessibilityNodeInfoCompat2.i("android.view.View");
                        if (semanticsConfiguration2.f10312b.c(SemanticsProperties.G)) {
                            accessibilityNodeInfoCompat2.i("android.widget.EditText");
                        }
                        SemanticsPropertyKey semanticsPropertyKey6 = SemanticsProperties.C;
                        MutableScatterMap mutableScatterMap = semanticsConfiguration2.f10312b;
                        if (mutableScatterMap.c(semanticsPropertyKey6)) {
                            accessibilityNodeInfoCompat2.i("android.widget.TextView");
                        }
                        Role role2 = (Role) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.z);
                        if (role2 != null) {
                            int i23 = role2.f10296a;
                            if (semanticsNode5.n()) {
                                accessibilityManager = accessibilityManager2;
                            } else {
                                accessibilityManager = accessibilityManager2;
                                if (SemanticsNode.j(4, semanticsNode5).isEmpty()) {
                                }
                                accessibilityNodeInfoObtain.setPackageName(androidComposeView.getContext().getPackageName());
                                accessibilityNodeInfoObtain.setImportantForAccessibility(SemanticsOwnerKt.f(semanticsNode5));
                                zA = AccessibilityManagerCompat.a(accessibilityManager);
                                listJ = SemanticsNode.j(4, semanticsNode5);
                                size = listJ.size();
                                i3 = 0;
                                i4 = 0;
                                while (true) {
                                    accessibilityNodeInfo = accessibilityNodeInfoCompat2.f12267a;
                                    if (i3 >= size) {
                                        break;
                                    }
                                    int i24 = i3;
                                    semanticsNode3 = (SemanticsNode) listJ.get(i3);
                                    int i25 = size;
                                    intObjectMapS = androidComposeViewAccessibilityDelegateCompat2.s();
                                    List list3 = listJ;
                                    i22 = semanticsNode3.f10322f;
                                    if (intObjectMapS.a(i22)) {
                                        androidViewHolder = androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(semanticsNode3.f10320c);
                                        if (i22 != -1) {
                                            if (androidViewHolder != null) {
                                                accessibilityNodeInfoObtain.addChild(androidViewHolder);
                                            } else {
                                                semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat2.s().b(i22);
                                                if (semanticsNodeWithAdjustedBounds != null || (semanticsNode4 = semanticsNodeWithAdjustedBounds.f10325a) == null || (semanticsConfigurationK = semanticsNode4.k()) == null) {
                                                    zC2 = false;
                                                } else {
                                                    zC2 = Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfigurationK, SemanticsProperties.o), Boolean.TRUE);
                                                }
                                                if (zA || !zC2) {
                                                    accessibilityNodeInfo.addChild(androidComposeView, i22);
                                                }
                                            }
                                            mutableIntIntMap.f(i22, i4);
                                            i4++;
                                        }
                                    }
                                    i3 = i24 + 1;
                                    size = i25;
                                    listJ = list3;
                                }
                                if (i2 == androidComposeViewAccessibilityDelegateCompat2.l) {
                                    accessibilityNodeInfo.setAccessibilityFocused(true);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
                                } else {
                                    accessibilityNodeInfo.setAccessibilityFocused(false);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12271f);
                                }
                                annotatedStringF = AndroidComposeViewAccessibilityDelegateCompat_androidKt.f(semanticsNode5);
                                if (annotatedStringF != null) {
                                    spannableString = (SpannableString) AndroidComposeViewAccessibilityDelegateCompat.P(AndroidAccessibilitySpannableString_androidKt.a(annotatedStringF, androidComposeView.getDensity(), androidComposeView.getFontFamilyResolver(), androidComposeViewAccessibilityDelegateCompat2.G));
                                } else {
                                    spannableString = null;
                                }
                                accessibilityNodeInfoCompat2.o(spannableString);
                                semanticsPropertyKey = SemanticsProperties.M;
                                if (mutableScatterMap.c(semanticsPropertyKey)) {
                                    accessibilityNodeInfoObtain.setContentInvalid(true);
                                    accessibilityNodeInfo.setError((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, semanticsPropertyKey));
                                }
                                accessibilityNodeInfoCompat2.n(AndroidComposeViewAccessibilityDelegateCompat_androidKt.e(semanticsNode5, resources));
                                accessibilityNodeInfo.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.d(semanticsNode5));
                                toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.K);
                                if (toggleableState != null) {
                                    if (toggleableState == ToggleableState.On) {
                                        accessibilityNodeInfo.setChecked(true);
                                    } else if (toggleableState == ToggleableState.Off) {
                                        accessibilityNodeInfo.setChecked(false);
                                    }
                                }
                                bool = (Boolean) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J);
                                if (bool != null) {
                                    zBooleanValue2 = bool.booleanValue();
                                    Role.f10289b.getClass();
                                    int i26 = Role.f10292f;
                                    if (role2 == null && role2.f10296a == i26) {
                                        accessibilityNodeInfoObtain.setSelected(zBooleanValue2);
                                    } else {
                                        accessibilityNodeInfo.setChecked(zBooleanValue2);
                                    }
                                }
                                if (semanticsConfiguration2.f10314e || SemanticsNode.j(4, semanticsNode5).isEmpty()) {
                                    list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                                    if (list != null) {
                                        str = (String) CollectionsKt.firstOrNull(list);
                                    } else {
                                        str = null;
                                    }
                                    accessibilityNodeInfoCompat2.l(str);
                                }
                                str2 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.A);
                                if (str2 != null) {
                                    semanticsNodeL2 = semanticsNode5;
                                    while (true) {
                                        if (semanticsNodeL2 == null) {
                                            zBooleanValue = false;
                                            break;
                                        }
                                        semanticsConfiguration = semanticsNodeL2.d;
                                        semanticsPropertyKey5 = SemanticsPropertiesAndroid.f10355a;
                                        semanticsNode2 = semanticsNodeL2;
                                        if (semanticsConfiguration.f10312b.c(semanticsPropertyKey5)) {
                                            zBooleanValue = ((Boolean) semanticsConfiguration.f(semanticsPropertyKey5)).booleanValue();
                                            break;
                                        }
                                        semanticsNodeL2 = semanticsNode2.l();
                                    }
                                    if (zBooleanValue) {
                                        accessibilityNodeInfoObtain.setViewIdResourceName(str2);
                                    }
                                }
                                if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10336h)) != null) {
                                    accessibilityNodeInfo.setHeading(true);
                                }
                                if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10337i)) != null) {
                                    accessibilityNodeInfoObtain.setTextEntryKey(true);
                                }
                                if (i2 != -1 && (iB4 = mutableIntIntMap.b(semanticsNode5.f10322f)) != -1) {
                                    accessibilityNodeInfoObtain.setDrawingOrder(iB4);
                                }
                                accessibilityNodeInfoObtain.setPassword(mutableScatterMap.c(SemanticsProperties.L));
                                Object objA = SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.O);
                                bool2 = Boolean.TRUE;
                                accessibilityNodeInfoObtain.setEditable(Intrinsics.c(objA, bool2));
                                num = (Integer) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.P);
                                if (num != null) {
                                    iIntValue = num.intValue();
                                } else {
                                    iIntValue = -1;
                                }
                                accessibilityNodeInfo.setMaxTextLength(iIntValue);
                                accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5));
                                semanticsPropertyKey2 = SemanticsProperties.l;
                                accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey2));
                                if (accessibilityNodeInfoObtain.isFocusable()) {
                                    accessibilityNodeInfo.setFocused(((Boolean) semanticsConfiguration2.f(semanticsPropertyKey2)).booleanValue());
                                    if (accessibilityNodeInfoObtain.isFocused()) {
                                        accessibilityNodeInfoCompat2.a(2);
                                        androidComposeViewAccessibilityDelegateCompat2.m = i2;
                                        z = true;
                                    } else {
                                        z = true;
                                        accessibilityNodeInfoCompat2.a(1);
                                    }
                                } else {
                                    z = true;
                                }
                                accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode5) ^ z);
                                if (semanticsNode5.n()) {
                                    semanticsNodeL = semanticsNode5.l();
                                    semanticsNodeL.getClass();
                                } else {
                                    semanticsNodeL = semanticsNode5;
                                }
                                if (semanticsNodeL.m().f()) {
                                    accessibilityNodeInfo.setVisibleToUser(false);
                                }
                                liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10339k);
                                if (liveRegionMode != null) {
                                    i20 = liveRegionMode.f10283a;
                                    LiveRegionMode.f10281b.getClass();
                                    if (i20 == 0 && i20 == LiveRegionMode.f10282c) {
                                        i21 = 2;
                                    } else {
                                        i21 = 1;
                                    }
                                    accessibilityNodeInfoObtain.setLiveRegion(i21);
                                }
                                accessibilityNodeInfo.setClickable(false);
                                accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10303b);
                                if (accessibilityAction != null) {
                                    zC = Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J), bool2);
                                    Role.f10289b.getClass();
                                    i19 = Role.f10292f;
                                    if (role2 == null) {
                                        z2 = zC;
                                    } else {
                                        z2 = zC;
                                        z3 = role2.f10296a == i19;
                                        if (z3 || (z3 && !z2)) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        accessibilityNodeInfo.setClickable(z4);
                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5) && accessibilityNodeInfoObtain.isClickable()) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                        }
                                    }
                                    int i27 = Role.f10291e;
                                    if (role2 != null && role2.f10296a == i27) {
                                    }
                                    if (z3) {
                                        z4 = true;
                                    } else {
                                        z4 = true;
                                    }
                                    accessibilityNodeInfo.setClickable(z4);
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                    }
                                }
                                accessibilityNodeInfo.setLongClickable(false);
                                accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10304c);
                                if (accessibilityAction2 != null) {
                                    accessibilityNodeInfo.setLongClickable(true);
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.f10269a));
                                    }
                                }
                                accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.q);
                                if (accessibilityAction3 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.f10269a));
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityAction12 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10310k);
                                    if (accessibilityAction12 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(PKIFailureInfo.badSenderNonce, accessibilityAction12.f10269a));
                                    }
                                    accessibilityAction13 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.p);
                                    if (accessibilityAction13 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionImeEnter, accessibilityAction13.f10269a));
                                    }
                                    accessibilityAction14 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.r);
                                    if (accessibilityAction14 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction14.f10269a));
                                    }
                                    accessibilityAction15 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.s);
                                    if (accessibilityAction15 != null && accessibilityNodeInfoObtain.isFocused()) {
                                        primaryClipDescription = androidComposeView.getClipboardManager().a().getPrimaryClipDescription();
                                        if (primaryClipDescription != null) {
                                            zHasMimeType = primaryClipDescription.hasMimeType("text/*");
                                        } else {
                                            zHasMimeType = false;
                                        }
                                        if (zHasMimeType) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction15.f10269a));
                                        }
                                    }
                                }
                                strT = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode5);
                                if (strT != null || strT.length() == 0) {
                                    layoutNode = layoutNode2;
                                } else {
                                    accessibilityNodeInfoObtain.setTextSelection(androidComposeViewAccessibilityDelegateCompat2.r(semanticsNode5), androidComposeViewAccessibilityDelegateCompat2.q(semanticsNode5));
                                    AccessibilityAction accessibilityAction16 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10309j);
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, accessibilityAction16 != null ? accessibilityAction16.f10269a : null));
                                    accessibilityNodeInfoCompat2.a(256);
                                    accessibilityNodeInfoCompat2.a(512);
                                    accessibilityNodeInfo.setMovementGranularities(11);
                                    List list4 = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                                    if ((list4 == null || list4.isEmpty()) && mutableScatterMap.c(SemanticsActions.f10302a) && (!mutableScatterMap.c(SemanticsProperties.G) || Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration2, semanticsPropertyKey2), bool2))) {
                                        layoutNode = layoutNode2;
                                        LayoutNode layoutNodeC = AndroidComposeViewAccessibilityDelegateCompat_androidKt.c(layoutNode, AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1.f9924c);
                                        if (layoutNodeC == null) {
                                            accessibilityNodeInfo.setMovementGranularities(accessibilityNodeInfoObtain.getMovementGranularities() | 20);
                                        } else {
                                            SemanticsConfiguration semanticsConfigurationI = layoutNodeC.i();
                                            if (semanticsConfigurationI != null ? Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfigurationI, semanticsPropertyKey2), bool2) : false) {
                                                accessibilityNodeInfo.setMovementGranularities(accessibilityNodeInfoObtain.getMovementGranularities() | 20);
                                            }
                                        }
                                    } else {
                                        layoutNode = layoutNode2;
                                    }
                                }
                                arrayList = new ArrayList();
                                arrayList.add("androidx.compose.ui.semantics.id");
                                charSequenceG = accessibilityNodeInfoCompat2.g();
                                if (charSequenceG != null && charSequenceG.length() != 0 && mutableScatterMap.c(SemanticsActions.f10302a)) {
                                    arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
                                }
                                if (mutableScatterMap.c(SemanticsProperties.A)) {
                                    arrayList.add("androidx.compose.ui.semantics.testTag");
                                }
                                if (mutableScatterMap.c(SemanticsProperties.Q)) {
                                    arrayList.add("androidx.compose.ui.semantics.shapeType");
                                    arrayList.add("androidx.compose.ui.semantics.shapeRect");
                                    arrayList.add("androidx.compose.ui.semantics.shapeCorners");
                                    arrayList.add("androidx.compose.ui.semantics.shapeRegion");
                                }
                                mutableScatterSet = semanticsConfiguration2.d;
                                if (mutableScatterSet != null) {
                                    objArr = mutableScatterSet.f3368b;
                                    jArr = mutableScatterSet.f3367a;
                                    length = jArr.length - 2;
                                    if (length >= 0) {
                                        i15 = 0;
                                        while (true) {
                                            j2 = jArr[i15];
                                            androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                if (i15 != length) {
                                                    break;
                                                    break;
                                                }
                                                i15++;
                                                androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                            } else {
                                                i16 = 8 - ((~(i15 - length)) >>> 31);
                                                i17 = 0;
                                                while (i17 < i16) {
                                                    if ((j2 & 255) < 128) {
                                                        i18 = i17;
                                                        str6 = ((SemanticsPropertyKey) objArr[(i15 << 3) + i17]).d;
                                                        if (str6 != null) {
                                                            arrayList.add(str6);
                                                        }
                                                    } else {
                                                        i18 = i17;
                                                    }
                                                    j2 >>= 8;
                                                    i17 = i18 + 1;
                                                }
                                                if (i16 != 8) {
                                                    break;
                                                }
                                                if (i15 != length) {
                                                    break;
                                                }
                                                i15++;
                                                androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                            }
                                        }
                                    } else {
                                        androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                    }
                                } else {
                                    androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                }
                                accessibilityNodeInfoObtain.setAvailableExtraData(arrayList);
                                progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10333c);
                                if (progressBarRangeInfo != null) {
                                    f2 = progressBarRangeInfo.f10286a;
                                    closedFloatingPointRange = progressBarRangeInfo.f10287b;
                                    semanticsPropertyKey4 = SemanticsActions.f10308i;
                                    if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                        accessibilityNodeInfoCompat2.i("android.widget.SeekBar");
                                    } else {
                                        accessibilityNodeInfoCompat2.i("android.widget.ProgressBar");
                                    }
                                    ProgressBarRangeInfo.d.getClass();
                                    if (progressBarRangeInfo != ProgressBarRangeInfo.f10285e) {
                                        accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue(), f2));
                                    }
                                    if (mutableScatterMap.c(semanticsPropertyKey4) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        fFloatValue = closedFloatingPointRange.f().floatValue();
                                        fFloatValue2 = closedFloatingPointRange.i().floatValue();
                                        if (fFloatValue < fFloatValue2) {
                                            fFloatValue = fFloatValue2;
                                        }
                                        if (f2 < fFloatValue) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                        }
                                        fFloatValue3 = closedFloatingPointRange.i().floatValue();
                                        fFloatValue4 = closedFloatingPointRange.f().floatValue();
                                        if (fFloatValue3 > fFloatValue4) {
                                            fFloatValue3 = fFloatValue4;
                                        }
                                        if (f2 > fFloatValue3) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                        }
                                    }
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5) && (accessibilityAction11 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10308i)) != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionSetProgress, accessibilityAction11.f10269a));
                                }
                                collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f);
                                if (collectionInfo != null) {
                                    accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(collectionInfo.f10274a, collectionInfo.f10275b, 0));
                                } else {
                                    arrayList2 = new ArrayList();
                                    if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10334e) != null) {
                                        listJ2 = SemanticsNode.j(4, semanticsNode5);
                                        size4 = listJ2.size();
                                        for (i5 = 0; i5 < size4; i5++) {
                                            semanticsNode = (SemanticsNode) listJ2.get(i5);
                                            if (semanticsNode.k().f10312b.c(SemanticsProperties.J)) {
                                                arrayList2.add(semanticsNode);
                                            }
                                        }
                                    }
                                    if (!arrayList2.isEmpty()) {
                                        zA2 = CollectionInfo_androidKt.a(arrayList2);
                                        if (zA2) {
                                            size2 = 1;
                                        } else {
                                            size2 = arrayList2.size();
                                        }
                                        if (zA2) {
                                            size3 = arrayList2.size();
                                        } else {
                                            size3 = 1;
                                        }
                                        accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(size2, size3, 0));
                                    }
                                }
                                CollectionInfo_androidKt.b(semanticsNode5, accessibilityNodeInfoCompat2);
                                scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.v);
                                AccessibilityAction accessibilityAction17 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.d);
                                if (scrollAxisRange != null && accessibilityAction17 != null) {
                                    if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null && SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10334e) == null) {
                                        accessibilityNodeInfoCompat2.i("android.widget.HorizontalScrollView");
                                    }
                                    if (((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        accessibilityNodeInfoCompat2.m(true);
                                    }
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange)) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                            if (layoutNode.B == LayoutDirection.Rtl) {
                                                accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                            } else {
                                                accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                            }
                                            accessibilityNodeInfoCompat2.b(accessibilityActionCompat2);
                                        }
                                        if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange)) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                            if (layoutNode.B == LayoutDirection.Rtl) {
                                                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                            } else {
                                                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                            }
                                            accessibilityNodeInfoCompat2.b(accessibilityActionCompat);
                                        }
                                    }
                                }
                                scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.w);
                                if (scrollAxisRange2 != null && accessibilityAction17 != null) {
                                    if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null && SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10334e) == null) {
                                        accessibilityNodeInfoCompat2.i("android.widget.ScrollView");
                                    }
                                    if (((Number) scrollAxisRange2.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        accessibilityNodeInfoCompat2.m(true);
                                    }
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange2)) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.p);
                                        }
                                        if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange2)) {
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.n);
                                        }
                                    }
                                }
                                role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.z);
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    Role.f10289b.getClass();
                                    int i28 = Role.f10295j;
                                    if (role != null || role.f10296a != i28) {
                                        accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.y);
                                        if (accessibilityAction7 != null) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction7.f10269a));
                                        }
                                        accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.A);
                                        if (accessibilityAction8 != null) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction8.f10269a));
                                        }
                                        accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.z);
                                        if (accessibilityAction9 != null) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction9.f10269a));
                                        }
                                        accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.B);
                                        if (accessibilityAction10 != null) {
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction10.f10269a));
                                        }
                                    }
                                }
                                accessibilityNodeInfo.setPaneTitle((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.d));
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.t);
                                    if (accessibilityAction4 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction4.f10269a));
                                    }
                                    accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.u);
                                    if (accessibilityAction5 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction5.f10269a));
                                    }
                                    accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.v);
                                    if (accessibilityAction6 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction6.f10269a));
                                    }
                                    semanticsPropertyKey3 = SemanticsActions.x;
                                    if (semanticsConfiguration2.f10312b.c(semanticsPropertyKey3)) {
                                        list2 = (List) semanticsConfiguration2.f(semanticsPropertyKey3);
                                        if (list2.size() >= mutableIntList2.f3256b) {
                                            md.k(defpackage.a.i(mutableIntList2.f3256b, " custom actions for one widget", new StringBuilder("Can't have more than ")));
                                            return null;
                                        }
                                        sparseArrayCompat2 = new SparseArrayCompat(0, 1, null);
                                        mutableObjectIntMapA = ObjectIntMapKt.a();
                                        sparseArrayCompat3 = sparseArrayCompat;
                                        if (sparseArrayCompat3.f3383b) {
                                            SparseArrayCompatKt.a(sparseArrayCompat3);
                                        }
                                        i6 = i2;
                                        if (ContainerHelpersKt.a(sparseArrayCompat3.f3385e, i6, sparseArrayCompat3.f3384c) >= 0) {
                                            mutableObjectIntMap = (MutableObjectIntMap) sparseArrayCompat3.b(i6);
                                            mutableIntList = new MutableIntList(0, 1, null);
                                            iArr = mutableIntList2.f3255a;
                                            i8 = mutableIntList2.f3256b;
                                            for (i9 = 0; i9 < i8; i9++) {
                                                mutableIntList.e(iArr[i9]);
                                            }
                                            arrayList3 = new ArrayList();
                                            size6 = list2.size();
                                            i10 = 0;
                                            while (i10 < size6) {
                                                customAccessibilityAction = (CustomAccessibilityAction) list2.get(i10);
                                                mutableObjectIntMap.getClass();
                                                int i29 = size6;
                                                str4 = customAccessibilityAction.f10279a;
                                                int i30 = i10;
                                                str5 = customAccessibilityAction.f10279a;
                                                if (mutableObjectIntMap.a(str4) >= 0) {
                                                    iB3 = mutableObjectIntMap.b(str5);
                                                    sparseArrayCompat2.d(iB3, str5);
                                                    mutableObjectIntMapA.h(iB3, str5);
                                                    iArr2 = mutableIntList.f3255a;
                                                    i12 = mutableIntList.f3256b;
                                                    i13 = 0;
                                                    while (true) {
                                                        if (i13 >= i12) {
                                                            i13 = -1;
                                                            break;
                                                        }
                                                        i14 = i12;
                                                        if (iB3 == iArr2[i13]) {
                                                            break;
                                                        }
                                                        i13++;
                                                        i12 = i14;
                                                    }
                                                    if (i13 >= 0) {
                                                        mutableIntList.g(i13);
                                                    }
                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB3, str5));
                                                } else {
                                                    arrayList3.add(customAccessibilityAction);
                                                }
                                                i10 = i30 + 1;
                                                size6 = i29;
                                                mutableObjectIntMap = mutableObjectIntMap;
                                            }
                                            size7 = arrayList3.size();
                                            for (i11 = 0; i11 < size7; i11++) {
                                                CustomAccessibilityAction customAccessibilityAction2 = (CustomAccessibilityAction) arrayList3.get(i11);
                                                int iB5 = mutableIntList.b(i11);
                                                String str7 = customAccessibilityAction2.f10279a;
                                                String str8 = customAccessibilityAction2.f10279a;
                                                sparseArrayCompat2.d(iB5, str7);
                                                mutableObjectIntMapA.h(iB5, str8);
                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB5, str8));
                                            }
                                        } else {
                                            size5 = list2.size();
                                            for (i7 = 0; i7 < size5; i7++) {
                                                CustomAccessibilityAction customAccessibilityAction3 = (CustomAccessibilityAction) list2.get(i7);
                                                int iB6 = mutableIntList2.b(i7);
                                                String str9 = customAccessibilityAction3.f10279a;
                                                String str10 = customAccessibilityAction3.f10279a;
                                                sparseArrayCompat2.d(iB6, str9);
                                                mutableObjectIntMapA.h(iB6, str10);
                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB6, str10));
                                            }
                                        }
                                        androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                        androidComposeViewAccessibilityDelegateCompat2.s.d(i6, sparseArrayCompat2);
                                        sparseArrayCompat3.d(i6, mutableObjectIntMapA);
                                    } else {
                                        i6 = i2;
                                        semanticsConfiguration2 = semanticsConfiguration2;
                                        androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                    }
                                } else {
                                    i6 = i2;
                                    semanticsConfiguration2 = semanticsConfiguration2;
                                    androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                }
                                accessibilityNodeInfo.setScreenReaderFocusable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b(semanticsNode5, resources));
                                iB = androidComposeViewAccessibilityDelegateCompat2.C.b(i6);
                                if (iB != -1) {
                                    androidViewHolderC2 = SemanticsUtils_androidKt.c(androidComposeView.getAndroidViewsHandler$ui(), iB);
                                    if (androidViewHolderC2 != null) {
                                        accessibilityNodeInfo.setTraversalBefore(androidViewHolderC2);
                                    } else {
                                        accessibilityNodeInfo.setTraversalBefore(androidComposeView, iB);
                                    }
                                    bundle = null;
                                    androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.E, null);
                                } else {
                                    bundle = null;
                                }
                                iB2 = androidComposeViewAccessibilityDelegateCompat2.D.b(i6);
                                if (iB2 != -1 && (androidViewHolderC = SemanticsUtils_androidKt.c(androidComposeView.getAndroidViewsHandler$ui(), iB2)) != null) {
                                    accessibilityNodeInfo.setTraversalAfter(androidViewHolderC);
                                    androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.F, bundle);
                                }
                                str3 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsPropertiesAndroid.f10356b);
                                if (str3 != null) {
                                    accessibilityNodeInfoCompat2.i(str3);
                                }
                                accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                            }
                            Role.f10289b.getClass();
                            sparseArrayCompat = sparseArrayCompat4;
                            if (i23 == Role.f10292f) {
                                accessibilityNodeInfoObtain.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", resources.getString(com.vuitton.android.R.string.tab));
                            } else if (i23 == Role.d) {
                                accessibilityNodeInfoObtain.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", resources.getString(com.vuitton.android.R.string.switch_role));
                            } else {
                                String strD = SemanticsUtils_androidKt.d(i23);
                                if (i23 != Role.g || semanticsNode5.p() || semanticsConfiguration2.f10314e) {
                                    accessibilityNodeInfoCompat2.i(strD);
                                }
                            }
                            accessibilityNodeInfoObtain.setPackageName(androidComposeView.getContext().getPackageName());
                            accessibilityNodeInfoObtain.setImportantForAccessibility(SemanticsOwnerKt.f(semanticsNode5));
                            zA = AccessibilityManagerCompat.a(accessibilityManager);
                            listJ = SemanticsNode.j(4, semanticsNode5);
                            size = listJ.size();
                            i3 = 0;
                            i4 = 0;
                            while (true) {
                                accessibilityNodeInfo = accessibilityNodeInfoCompat2.f12267a;
                                if (i3 >= size) {
                                    break;
                                    break;
                                }
                                int i210 = i3;
                                semanticsNode3 = (SemanticsNode) listJ.get(i3);
                                int i211 = size;
                                intObjectMapS = androidComposeViewAccessibilityDelegateCompat2.s();
                                List list5 = listJ;
                                i22 = semanticsNode3.f10322f;
                                if (intObjectMapS.a(i22)) {
                                    androidViewHolder = androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(semanticsNode3.f10320c);
                                    if (i22 != -1) {
                                        if (androidViewHolder != null) {
                                            accessibilityNodeInfoObtain.addChild(androidViewHolder);
                                        } else {
                                            semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat2.s().b(i22);
                                            if (semanticsNodeWithAdjustedBounds != null) {
                                                zC2 = false;
                                            } else {
                                                zC2 = false;
                                            }
                                            if (zA) {
                                                accessibilityNodeInfo.addChild(androidComposeView, i22);
                                            } else {
                                                accessibilityNodeInfo.addChild(androidComposeView, i22);
                                            }
                                        }
                                        mutableIntIntMap.f(i22, i4);
                                        i4++;
                                    }
                                }
                                i3 = i210 + 1;
                                size = i211;
                                listJ = list5;
                            }
                            if (i2 == androidComposeViewAccessibilityDelegateCompat2.l) {
                                accessibilityNodeInfo.setAccessibilityFocused(true);
                                accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
                            } else {
                                accessibilityNodeInfo.setAccessibilityFocused(false);
                                accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12271f);
                            }
                            annotatedStringF = AndroidComposeViewAccessibilityDelegateCompat_androidKt.f(semanticsNode5);
                            if (annotatedStringF != null) {
                                spannableString = (SpannableString) AndroidComposeViewAccessibilityDelegateCompat.P(AndroidAccessibilitySpannableString_androidKt.a(annotatedStringF, androidComposeView.getDensity(), androidComposeView.getFontFamilyResolver(), androidComposeViewAccessibilityDelegateCompat2.G));
                            } else {
                                spannableString = null;
                            }
                            accessibilityNodeInfoCompat2.o(spannableString);
                            semanticsPropertyKey = SemanticsProperties.M;
                            if (mutableScatterMap.c(semanticsPropertyKey)) {
                                accessibilityNodeInfoObtain.setContentInvalid(true);
                                accessibilityNodeInfo.setError((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, semanticsPropertyKey));
                            }
                            accessibilityNodeInfoCompat2.n(AndroidComposeViewAccessibilityDelegateCompat_androidKt.e(semanticsNode5, resources));
                            accessibilityNodeInfo.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.d(semanticsNode5));
                            toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.K);
                            if (toggleableState != null) {
                                if (toggleableState == ToggleableState.On) {
                                    accessibilityNodeInfo.setChecked(true);
                                } else if (toggleableState == ToggleableState.Off) {
                                    accessibilityNodeInfo.setChecked(false);
                                }
                            }
                            bool = (Boolean) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J);
                            if (bool != null) {
                                zBooleanValue2 = bool.booleanValue();
                                Role.f10289b.getClass();
                                int i212 = Role.f10292f;
                                if (role2 == null) {
                                    accessibilityNodeInfo.setChecked(zBooleanValue2);
                                } else {
                                    accessibilityNodeInfoObtain.setSelected(zBooleanValue2);
                                }
                            }
                            if (semanticsConfiguration2.f10314e) {
                                list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                                if (list != null) {
                                    str = (String) CollectionsKt.firstOrNull(list);
                                } else {
                                    str = null;
                                }
                                accessibilityNodeInfoCompat2.l(str);
                            } else {
                                list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                                if (list != null) {
                                    str = (String) CollectionsKt.firstOrNull(list);
                                } else {
                                    str = null;
                                }
                                accessibilityNodeInfoCompat2.l(str);
                            }
                            str2 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.A);
                            if (str2 != null) {
                                semanticsNodeL2 = semanticsNode5;
                                while (true) {
                                    if (semanticsNodeL2 == null) {
                                        zBooleanValue = false;
                                        break;
                                    }
                                    semanticsConfiguration = semanticsNodeL2.d;
                                    semanticsPropertyKey5 = SemanticsPropertiesAndroid.f10355a;
                                    semanticsNode2 = semanticsNodeL2;
                                    if (semanticsConfiguration.f10312b.c(semanticsPropertyKey5)) {
                                        zBooleanValue = ((Boolean) semanticsConfiguration.f(semanticsPropertyKey5)).booleanValue();
                                        break;
                                    }
                                    semanticsNodeL2 = semanticsNode2.l();
                                }
                                if (zBooleanValue) {
                                    accessibilityNodeInfoObtain.setViewIdResourceName(str2);
                                }
                            }
                            if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10336h)) != null) {
                                accessibilityNodeInfo.setHeading(true);
                            }
                            if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10337i)) != null) {
                                accessibilityNodeInfoObtain.setTextEntryKey(true);
                            }
                            if (i2 != -1) {
                                accessibilityNodeInfoObtain.setDrawingOrder(iB4);
                            }
                            accessibilityNodeInfoObtain.setPassword(mutableScatterMap.c(SemanticsProperties.L));
                            Object objA2 = SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.O);
                            bool2 = Boolean.TRUE;
                            accessibilityNodeInfoObtain.setEditable(Intrinsics.c(objA2, bool2));
                            num = (Integer) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.P);
                            if (num != null) {
                                iIntValue = num.intValue();
                            } else {
                                iIntValue = -1;
                            }
                            accessibilityNodeInfo.setMaxTextLength(iIntValue);
                            accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5));
                            semanticsPropertyKey2 = SemanticsProperties.l;
                            accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey2));
                            if (accessibilityNodeInfoObtain.isFocusable()) {
                                accessibilityNodeInfo.setFocused(((Boolean) semanticsConfiguration2.f(semanticsPropertyKey2)).booleanValue());
                                if (accessibilityNodeInfoObtain.isFocused()) {
                                    accessibilityNodeInfoCompat2.a(2);
                                    androidComposeViewAccessibilityDelegateCompat2.m = i2;
                                    z = true;
                                } else {
                                    z = true;
                                    accessibilityNodeInfoCompat2.a(1);
                                }
                            } else {
                                z = true;
                            }
                            accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode5) ^ z);
                            if (semanticsNode5.n()) {
                                semanticsNodeL = semanticsNode5.l();
                                semanticsNodeL.getClass();
                            } else {
                                semanticsNodeL = semanticsNode5;
                            }
                            if (semanticsNodeL.m().f()) {
                                accessibilityNodeInfo.setVisibleToUser(false);
                            }
                            liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10339k);
                            if (liveRegionMode != null) {
                                i20 = liveRegionMode.f10283a;
                                LiveRegionMode.f10281b.getClass();
                                if (i20 == 0) {
                                    i21 = 1;
                                } else {
                                    i21 = 2;
                                }
                                accessibilityNodeInfoObtain.setLiveRegion(i21);
                            }
                            accessibilityNodeInfo.setClickable(false);
                            accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10303b);
                            if (accessibilityAction != null) {
                                zC = Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J), bool2);
                                Role.f10289b.getClass();
                                i19 = Role.f10292f;
                                if (role2 == null) {
                                    z2 = zC;
                                } else {
                                    z2 = zC;
                                    if (role2.f10296a == i19) {
                                    }
                                    if (z3) {
                                        z4 = true;
                                    } else {
                                        z4 = true;
                                    }
                                    accessibilityNodeInfo.setClickable(z4);
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                    }
                                }
                                int i213 = Role.f10291e;
                                if (role2 != null) {
                                    if (z3) {
                                        z4 = true;
                                    } else {
                                        z4 = true;
                                    }
                                    accessibilityNodeInfo.setClickable(z4);
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                    }
                                }
                                if (z3) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                accessibilityNodeInfo.setClickable(z4);
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                }
                            }
                            accessibilityNodeInfo.setLongClickable(false);
                            accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10304c);
                            if (accessibilityAction2 != null) {
                                accessibilityNodeInfo.setLongClickable(true);
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.f10269a));
                                }
                            }
                            accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.q);
                            if (accessibilityAction3 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.f10269a));
                            }
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                accessibilityAction12 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10310k);
                                if (accessibilityAction12 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(PKIFailureInfo.badSenderNonce, accessibilityAction12.f10269a));
                                }
                                accessibilityAction13 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.p);
                                if (accessibilityAction13 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionImeEnter, accessibilityAction13.f10269a));
                                }
                                accessibilityAction14 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.r);
                                if (accessibilityAction14 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction14.f10269a));
                                }
                                accessibilityAction15 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.s);
                                if (accessibilityAction15 != null) {
                                    primaryClipDescription = androidComposeView.getClipboardManager().a().getPrimaryClipDescription();
                                    if (primaryClipDescription != null) {
                                        zHasMimeType = primaryClipDescription.hasMimeType("text/*");
                                    } else {
                                        zHasMimeType = false;
                                    }
                                    if (zHasMimeType) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction15.f10269a));
                                    }
                                }
                            }
                            strT = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode5);
                            if (strT != null) {
                                layoutNode = layoutNode2;
                            } else {
                                layoutNode = layoutNode2;
                            }
                            arrayList = new ArrayList();
                            arrayList.add("androidx.compose.ui.semantics.id");
                            charSequenceG = accessibilityNodeInfoCompat2.g();
                            if (charSequenceG != null) {
                                arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
                            }
                            if (mutableScatterMap.c(SemanticsProperties.A)) {
                                arrayList.add("androidx.compose.ui.semantics.testTag");
                            }
                            if (mutableScatterMap.c(SemanticsProperties.Q)) {
                                arrayList.add("androidx.compose.ui.semantics.shapeType");
                                arrayList.add("androidx.compose.ui.semantics.shapeRect");
                                arrayList.add("androidx.compose.ui.semantics.shapeCorners");
                                arrayList.add("androidx.compose.ui.semantics.shapeRegion");
                            }
                            mutableScatterSet = semanticsConfiguration2.d;
                            if (mutableScatterSet != null) {
                                objArr = mutableScatterSet.f3368b;
                                jArr = mutableScatterSet.f3367a;
                                length = jArr.length - 2;
                                if (length >= 0) {
                                    i15 = 0;
                                    while (true) {
                                        j2 = jArr[i15];
                                        androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (i15 != length) {
                                                break;
                                                break;
                                            }
                                            i15++;
                                            androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                        } else {
                                            i16 = 8 - ((~(i15 - length)) >>> 31);
                                            i17 = 0;
                                            while (i17 < i16) {
                                                if ((j2 & 255) < 128) {
                                                    i18 = i17;
                                                    str6 = ((SemanticsPropertyKey) objArr[(i15 << 3) + i17]).d;
                                                    if (str6 != null) {
                                                        arrayList.add(str6);
                                                    }
                                                } else {
                                                    i18 = i17;
                                                }
                                                j2 >>= 8;
                                                i17 = i18 + 1;
                                            }
                                            if (i16 != 8) {
                                                break;
                                                break;
                                            }
                                            if (i15 != length) {
                                                break;
                                                break;
                                            }
                                            i15++;
                                            androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                        }
                                    }
                                } else {
                                    androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                }
                            } else {
                                androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                            }
                            accessibilityNodeInfoObtain.setAvailableExtraData(arrayList);
                            progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10333c);
                            if (progressBarRangeInfo != null) {
                                f2 = progressBarRangeInfo.f10286a;
                                closedFloatingPointRange = progressBarRangeInfo.f10287b;
                                semanticsPropertyKey4 = SemanticsActions.f10308i;
                                if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                    accessibilityNodeInfoCompat2.i("android.widget.SeekBar");
                                } else {
                                    accessibilityNodeInfoCompat2.i("android.widget.ProgressBar");
                                }
                                ProgressBarRangeInfo.d.getClass();
                                if (progressBarRangeInfo != ProgressBarRangeInfo.f10285e) {
                                    accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue(), f2));
                                }
                                if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                    fFloatValue = closedFloatingPointRange.f().floatValue();
                                    fFloatValue2 = closedFloatingPointRange.i().floatValue();
                                    if (fFloatValue < fFloatValue2) {
                                        fFloatValue = fFloatValue2;
                                    }
                                    if (f2 < fFloatValue) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                    }
                                    fFloatValue3 = closedFloatingPointRange.i().floatValue();
                                    fFloatValue4 = closedFloatingPointRange.f().floatValue();
                                    if (fFloatValue3 > fFloatValue4) {
                                        fFloatValue3 = fFloatValue4;
                                    }
                                    if (f2 > fFloatValue3) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                    }
                                }
                            }
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionSetProgress, accessibilityAction11.f10269a));
                            }
                            collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f);
                            if (collectionInfo != null) {
                                accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(collectionInfo.f10274a, collectionInfo.f10275b, 0));
                            } else {
                                arrayList2 = new ArrayList();
                                if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10334e) != null) {
                                    listJ2 = SemanticsNode.j(4, semanticsNode5);
                                    size4 = listJ2.size();
                                    while (i5 < size4) {
                                        semanticsNode = (SemanticsNode) listJ2.get(i5);
                                        if (semanticsNode.k().f10312b.c(SemanticsProperties.J)) {
                                            arrayList2.add(semanticsNode);
                                        }
                                    }
                                }
                                if (!arrayList2.isEmpty()) {
                                    zA2 = CollectionInfo_androidKt.a(arrayList2);
                                    if (zA2) {
                                        size2 = 1;
                                    } else {
                                        size2 = arrayList2.size();
                                    }
                                    if (zA2) {
                                        size3 = arrayList2.size();
                                    } else {
                                        size3 = 1;
                                    }
                                    accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(size2, size3, 0));
                                }
                            }
                            CollectionInfo_androidKt.b(semanticsNode5, accessibilityNodeInfoCompat2);
                            scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.v);
                            AccessibilityAction accessibilityAction18 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.d);
                            if (scrollAxisRange != null) {
                                if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null) {
                                    accessibilityNodeInfoCompat2.i("android.widget.HorizontalScrollView");
                                }
                                if (((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    accessibilityNodeInfoCompat2.m(true);
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange)) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                        if (layoutNode.B == LayoutDirection.Rtl) {
                                            accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                        } else {
                                            accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                        }
                                        accessibilityNodeInfoCompat2.b(accessibilityActionCompat2);
                                    }
                                    if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange)) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                        if (layoutNode.B == LayoutDirection.Rtl) {
                                            accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                        } else {
                                            accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                        }
                                        accessibilityNodeInfoCompat2.b(accessibilityActionCompat);
                                    }
                                }
                            }
                            scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.w);
                            if (scrollAxisRange2 != null) {
                                if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null) {
                                    accessibilityNodeInfoCompat2.i("android.widget.ScrollView");
                                }
                                if (((Number) scrollAxisRange2.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    accessibilityNodeInfoCompat2.m(true);
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange2)) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.p);
                                    }
                                    if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange2)) {
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                        accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.n);
                                    }
                                }
                            }
                            role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.z);
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                Role.f10289b.getClass();
                                int i214 = Role.f10295j;
                                if (role != null) {
                                    accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.y);
                                    if (accessibilityAction7 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction7.f10269a));
                                    }
                                    accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.A);
                                    if (accessibilityAction8 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction8.f10269a));
                                    }
                                    accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.z);
                                    if (accessibilityAction9 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction9.f10269a));
                                    }
                                    accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.B);
                                    if (accessibilityAction10 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction10.f10269a));
                                    }
                                } else {
                                    accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.y);
                                    if (accessibilityAction7 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction7.f10269a));
                                    }
                                    accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.A);
                                    if (accessibilityAction8 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction8.f10269a));
                                    }
                                    accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.z);
                                    if (accessibilityAction9 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction9.f10269a));
                                    }
                                    accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.B);
                                    if (accessibilityAction10 != null) {
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction10.f10269a));
                                    }
                                }
                            }
                            accessibilityNodeInfo.setPaneTitle((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.d));
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                i6 = i2;
                                semanticsConfiguration2 = semanticsConfiguration2;
                                androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                            } else {
                                accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.t);
                                if (accessibilityAction4 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction4.f10269a));
                                }
                                accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.u);
                                if (accessibilityAction5 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction5.f10269a));
                                }
                                accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.v);
                                if (accessibilityAction6 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction6.f10269a));
                                }
                                semanticsPropertyKey3 = SemanticsActions.x;
                                if (semanticsConfiguration2.f10312b.c(semanticsPropertyKey3)) {
                                    list2 = (List) semanticsConfiguration2.f(semanticsPropertyKey3);
                                    if (list2.size() >= mutableIntList2.f3256b) {
                                        md.k(defpackage.a.i(mutableIntList2.f3256b, " custom actions for one widget", new StringBuilder("Can't have more than ")));
                                        return null;
                                    }
                                    sparseArrayCompat2 = new SparseArrayCompat(0, 1, null);
                                    mutableObjectIntMapA = ObjectIntMapKt.a();
                                    sparseArrayCompat3 = sparseArrayCompat;
                                    if (sparseArrayCompat3.f3383b) {
                                        SparseArrayCompatKt.a(sparseArrayCompat3);
                                    }
                                    i6 = i2;
                                    if (ContainerHelpersKt.a(sparseArrayCompat3.f3385e, i6, sparseArrayCompat3.f3384c) >= 0) {
                                        mutableObjectIntMap = (MutableObjectIntMap) sparseArrayCompat3.b(i6);
                                        mutableIntList = new MutableIntList(0, 1, null);
                                        iArr = mutableIntList2.f3255a;
                                        i8 = mutableIntList2.f3256b;
                                        while (i9 < i8) {
                                            mutableIntList.e(iArr[i9]);
                                        }
                                        arrayList3 = new ArrayList();
                                        size6 = list2.size();
                                        i10 = 0;
                                        while (i10 < size6) {
                                            customAccessibilityAction = (CustomAccessibilityAction) list2.get(i10);
                                            mutableObjectIntMap.getClass();
                                            int i215 = size6;
                                            str4 = customAccessibilityAction.f10279a;
                                            int i31 = i10;
                                            str5 = customAccessibilityAction.f10279a;
                                            if (mutableObjectIntMap.a(str4) >= 0) {
                                                iB3 = mutableObjectIntMap.b(str5);
                                                sparseArrayCompat2.d(iB3, str5);
                                                mutableObjectIntMapA.h(iB3, str5);
                                                iArr2 = mutableIntList.f3255a;
                                                i12 = mutableIntList.f3256b;
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= i12) {
                                                        i13 = -1;
                                                        break;
                                                    }
                                                    i14 = i12;
                                                    if (iB3 == iArr2[i13]) {
                                                        break;
                                                        break;
                                                    }
                                                    i13++;
                                                    i12 = i14;
                                                }
                                                if (i13 >= 0) {
                                                    mutableIntList.g(i13);
                                                }
                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB3, str5));
                                            } else {
                                                arrayList3.add(customAccessibilityAction);
                                            }
                                            i10 = i31 + 1;
                                            size6 = i215;
                                            mutableObjectIntMap = mutableObjectIntMap;
                                        }
                                        size7 = arrayList3.size();
                                        while (i11 < size7) {
                                            CustomAccessibilityAction customAccessibilityAction4 = (CustomAccessibilityAction) arrayList3.get(i11);
                                            int iB7 = mutableIntList.b(i11);
                                            String str11 = customAccessibilityAction4.f10279a;
                                            String str12 = customAccessibilityAction4.f10279a;
                                            sparseArrayCompat2.d(iB7, str11);
                                            mutableObjectIntMapA.h(iB7, str12);
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB7, str12));
                                        }
                                    } else {
                                        size5 = list2.size();
                                        while (i7 < size5) {
                                            CustomAccessibilityAction customAccessibilityAction5 = (CustomAccessibilityAction) list2.get(i7);
                                            int iB8 = mutableIntList2.b(i7);
                                            String str13 = customAccessibilityAction5.f10279a;
                                            String str14 = customAccessibilityAction5.f10279a;
                                            sparseArrayCompat2.d(iB8, str13);
                                            mutableObjectIntMapA.h(iB8, str14);
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB8, str14));
                                        }
                                    }
                                    androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                    androidComposeViewAccessibilityDelegateCompat2.s.d(i6, sparseArrayCompat2);
                                    sparseArrayCompat3.d(i6, mutableObjectIntMapA);
                                } else {
                                    i6 = i2;
                                    semanticsConfiguration2 = semanticsConfiguration2;
                                    androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                }
                            }
                            accessibilityNodeInfo.setScreenReaderFocusable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b(semanticsNode5, resources));
                            iB = androidComposeViewAccessibilityDelegateCompat2.C.b(i6);
                            if (iB != -1) {
                                androidViewHolderC2 = SemanticsUtils_androidKt.c(androidComposeView.getAndroidViewsHandler$ui(), iB);
                                if (androidViewHolderC2 != null) {
                                    accessibilityNodeInfo.setTraversalBefore(androidViewHolderC2);
                                } else {
                                    accessibilityNodeInfo.setTraversalBefore(androidComposeView, iB);
                                }
                                bundle = null;
                                androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.E, null);
                            } else {
                                bundle = null;
                            }
                            iB2 = androidComposeViewAccessibilityDelegateCompat2.D.b(i6);
                            if (iB2 != -1) {
                                accessibilityNodeInfo.setTraversalAfter(androidViewHolderC);
                                androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.F, bundle);
                            }
                            str3 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsPropertiesAndroid.f10356b);
                            if (str3 != null) {
                                accessibilityNodeInfoCompat2.i(str3);
                            }
                            accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                        } else {
                            accessibilityManager = accessibilityManager2;
                        }
                        sparseArrayCompat = sparseArrayCompat4;
                        accessibilityNodeInfoObtain.setPackageName(androidComposeView.getContext().getPackageName());
                        accessibilityNodeInfoObtain.setImportantForAccessibility(SemanticsOwnerKt.f(semanticsNode5));
                        zA = AccessibilityManagerCompat.a(accessibilityManager);
                        listJ = SemanticsNode.j(4, semanticsNode5);
                        size = listJ.size();
                        i3 = 0;
                        i4 = 0;
                        while (true) {
                            accessibilityNodeInfo = accessibilityNodeInfoCompat2.f12267a;
                            if (i3 >= size) {
                                break;
                                break;
                            }
                            int i216 = i3;
                            semanticsNode3 = (SemanticsNode) listJ.get(i3);
                            int i217 = size;
                            intObjectMapS = androidComposeViewAccessibilityDelegateCompat2.s();
                            List list6 = listJ;
                            i22 = semanticsNode3.f10322f;
                            if (intObjectMapS.a(i22)) {
                                androidViewHolder = androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(semanticsNode3.f10320c);
                                if (i22 != -1) {
                                    if (androidViewHolder != null) {
                                        accessibilityNodeInfoObtain.addChild(androidViewHolder);
                                    } else {
                                        semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat2.s().b(i22);
                                        if (semanticsNodeWithAdjustedBounds != null) {
                                            zC2 = false;
                                        } else {
                                            zC2 = false;
                                        }
                                        if (zA) {
                                            accessibilityNodeInfo.addChild(androidComposeView, i22);
                                        } else {
                                            accessibilityNodeInfo.addChild(androidComposeView, i22);
                                        }
                                    }
                                    mutableIntIntMap.f(i22, i4);
                                    i4++;
                                }
                            }
                            i3 = i216 + 1;
                            size = i217;
                            listJ = list6;
                        }
                        if (i2 == androidComposeViewAccessibilityDelegateCompat2.l) {
                            accessibilityNodeInfo.setAccessibilityFocused(true);
                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
                        } else {
                            accessibilityNodeInfo.setAccessibilityFocused(false);
                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12271f);
                        }
                        annotatedStringF = AndroidComposeViewAccessibilityDelegateCompat_androidKt.f(semanticsNode5);
                        if (annotatedStringF != null) {
                            spannableString = (SpannableString) AndroidComposeViewAccessibilityDelegateCompat.P(AndroidAccessibilitySpannableString_androidKt.a(annotatedStringF, androidComposeView.getDensity(), androidComposeView.getFontFamilyResolver(), androidComposeViewAccessibilityDelegateCompat2.G));
                        } else {
                            spannableString = null;
                        }
                        accessibilityNodeInfoCompat2.o(spannableString);
                        semanticsPropertyKey = SemanticsProperties.M;
                        if (mutableScatterMap.c(semanticsPropertyKey)) {
                            accessibilityNodeInfoObtain.setContentInvalid(true);
                            accessibilityNodeInfo.setError((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, semanticsPropertyKey));
                        }
                        accessibilityNodeInfoCompat2.n(AndroidComposeViewAccessibilityDelegateCompat_androidKt.e(semanticsNode5, resources));
                        accessibilityNodeInfo.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.d(semanticsNode5));
                        toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.K);
                        if (toggleableState != null) {
                            if (toggleableState == ToggleableState.On) {
                                accessibilityNodeInfo.setChecked(true);
                            } else if (toggleableState == ToggleableState.Off) {
                                accessibilityNodeInfo.setChecked(false);
                            }
                        }
                        bool = (Boolean) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J);
                        if (bool != null) {
                            zBooleanValue2 = bool.booleanValue();
                            Role.f10289b.getClass();
                            int i218 = Role.f10292f;
                            if (role2 == null) {
                                accessibilityNodeInfo.setChecked(zBooleanValue2);
                            } else {
                                accessibilityNodeInfoObtain.setSelected(zBooleanValue2);
                            }
                        }
                        if (semanticsConfiguration2.f10314e) {
                            list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                            if (list != null) {
                                str = (String) CollectionsKt.firstOrNull(list);
                            } else {
                                str = null;
                            }
                            accessibilityNodeInfoCompat2.l(str);
                        } else {
                            list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                            if (list != null) {
                                str = (String) CollectionsKt.firstOrNull(list);
                            } else {
                                str = null;
                            }
                            accessibilityNodeInfoCompat2.l(str);
                        }
                        str2 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.A);
                        if (str2 != null) {
                            semanticsNodeL2 = semanticsNode5;
                            while (true) {
                                if (semanticsNodeL2 == null) {
                                    zBooleanValue = false;
                                    break;
                                }
                                semanticsConfiguration = semanticsNodeL2.d;
                                semanticsPropertyKey5 = SemanticsPropertiesAndroid.f10355a;
                                semanticsNode2 = semanticsNodeL2;
                                if (semanticsConfiguration.f10312b.c(semanticsPropertyKey5)) {
                                    zBooleanValue = ((Boolean) semanticsConfiguration.f(semanticsPropertyKey5)).booleanValue();
                                    break;
                                }
                                semanticsNodeL2 = semanticsNode2.l();
                            }
                            if (zBooleanValue) {
                                accessibilityNodeInfoObtain.setViewIdResourceName(str2);
                            }
                        }
                        if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10336h)) != null) {
                            accessibilityNodeInfo.setHeading(true);
                        }
                        if (((Unit) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10337i)) != null) {
                            accessibilityNodeInfoObtain.setTextEntryKey(true);
                        }
                        if (i2 != -1) {
                            accessibilityNodeInfoObtain.setDrawingOrder(iB4);
                        }
                        accessibilityNodeInfoObtain.setPassword(mutableScatterMap.c(SemanticsProperties.L));
                        Object objA3 = SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.O);
                        bool2 = Boolean.TRUE;
                        accessibilityNodeInfoObtain.setEditable(Intrinsics.c(objA3, bool2));
                        num = (Integer) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.P);
                        if (num != null) {
                            iIntValue = num.intValue();
                        } else {
                            iIntValue = -1;
                        }
                        accessibilityNodeInfo.setMaxTextLength(iIntValue);
                        accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5));
                        semanticsPropertyKey2 = SemanticsProperties.l;
                        accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey2));
                        if (accessibilityNodeInfoObtain.isFocusable()) {
                            accessibilityNodeInfo.setFocused(((Boolean) semanticsConfiguration2.f(semanticsPropertyKey2)).booleanValue());
                            if (accessibilityNodeInfoObtain.isFocused()) {
                                accessibilityNodeInfoCompat2.a(2);
                                androidComposeViewAccessibilityDelegateCompat2.m = i2;
                                z = true;
                            } else {
                                z = true;
                                accessibilityNodeInfoCompat2.a(1);
                            }
                        } else {
                            z = true;
                        }
                        accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode5) ^ z);
                        if (semanticsNode5.n()) {
                            semanticsNodeL = semanticsNode5.l();
                            semanticsNodeL.getClass();
                        } else {
                            semanticsNodeL = semanticsNode5;
                        }
                        if (semanticsNodeL.m().f()) {
                            accessibilityNodeInfo.setVisibleToUser(false);
                        }
                        liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10339k);
                        if (liveRegionMode != null) {
                            i20 = liveRegionMode.f10283a;
                            LiveRegionMode.f10281b.getClass();
                            if (i20 == 0) {
                                i21 = 1;
                            } else {
                                i21 = 2;
                            }
                            accessibilityNodeInfoObtain.setLiveRegion(i21);
                        }
                        accessibilityNodeInfo.setClickable(false);
                        accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10303b);
                        if (accessibilityAction != null) {
                            zC = Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.J), bool2);
                            Role.f10289b.getClass();
                            i19 = Role.f10292f;
                            if (role2 == null) {
                                z2 = zC;
                            } else {
                                z2 = zC;
                                if (role2.f10296a == i19) {
                                }
                                if (z3) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                accessibilityNodeInfo.setClickable(z4);
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                }
                            }
                            int i219 = Role.f10291e;
                            if (role2 != null) {
                                if (z3) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                accessibilityNodeInfo.setClickable(z4);
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                                }
                            }
                            if (z3) {
                                z4 = true;
                            } else {
                                z4 = true;
                            }
                            accessibilityNodeInfo.setClickable(z4);
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.f10269a));
                            }
                        }
                        accessibilityNodeInfo.setLongClickable(false);
                        accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10304c);
                        if (accessibilityAction2 != null) {
                            accessibilityNodeInfo.setLongClickable(true);
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.f10269a));
                            }
                        }
                        accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.q);
                        if (accessibilityAction3 != null) {
                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.f10269a));
                        }
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                            accessibilityAction12 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.f10310k);
                            if (accessibilityAction12 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(PKIFailureInfo.badSenderNonce, accessibilityAction12.f10269a));
                            }
                            accessibilityAction13 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.p);
                            if (accessibilityAction13 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionImeEnter, accessibilityAction13.f10269a));
                            }
                            accessibilityAction14 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.r);
                            if (accessibilityAction14 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction14.f10269a));
                            }
                            accessibilityAction15 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.s);
                            if (accessibilityAction15 != null) {
                                primaryClipDescription = androidComposeView.getClipboardManager().a().getPrimaryClipDescription();
                                if (primaryClipDescription != null) {
                                    zHasMimeType = primaryClipDescription.hasMimeType("text/*");
                                } else {
                                    zHasMimeType = false;
                                }
                                if (zHasMimeType) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction15.f10269a));
                                }
                            }
                        }
                        strT = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode5);
                        if (strT != null) {
                            layoutNode = layoutNode2;
                        } else {
                            layoutNode = layoutNode2;
                        }
                        arrayList = new ArrayList();
                        arrayList.add("androidx.compose.ui.semantics.id");
                        charSequenceG = accessibilityNodeInfoCompat2.g();
                        if (charSequenceG != null) {
                            arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
                        }
                        if (mutableScatterMap.c(SemanticsProperties.A)) {
                            arrayList.add("androidx.compose.ui.semantics.testTag");
                        }
                        if (mutableScatterMap.c(SemanticsProperties.Q)) {
                            arrayList.add("androidx.compose.ui.semantics.shapeType");
                            arrayList.add("androidx.compose.ui.semantics.shapeRect");
                            arrayList.add("androidx.compose.ui.semantics.shapeCorners");
                            arrayList.add("androidx.compose.ui.semantics.shapeRegion");
                        }
                        mutableScatterSet = semanticsConfiguration2.d;
                        if (mutableScatterSet != null) {
                            objArr = mutableScatterSet.f3368b;
                            jArr = mutableScatterSet.f3367a;
                            length = jArr.length - 2;
                            if (length >= 0) {
                                i15 = 0;
                                while (true) {
                                    j2 = jArr[i15];
                                    androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i15 != length) {
                                            break;
                                            break;
                                        }
                                        i15++;
                                        androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                    } else {
                                        i16 = 8 - ((~(i15 - length)) >>> 31);
                                        i17 = 0;
                                        while (i17 < i16) {
                                            if ((j2 & 255) < 128) {
                                                i18 = i17;
                                                str6 = ((SemanticsPropertyKey) objArr[(i15 << 3) + i17]).d;
                                                if (str6 != null) {
                                                    arrayList.add(str6);
                                                }
                                            } else {
                                                i18 = i17;
                                            }
                                            j2 >>= 8;
                                            i17 = i18 + 1;
                                        }
                                        if (i16 != 8) {
                                            break;
                                            break;
                                        }
                                        if (i15 != length) {
                                            break;
                                            break;
                                        }
                                        i15++;
                                        androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                    }
                                }
                            } else {
                                androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                            }
                        } else {
                            androidComposeViewAccessibilityDelegateCompat = androidComposeViewAccessibilityDelegateCompat2;
                        }
                        accessibilityNodeInfoObtain.setAvailableExtraData(arrayList);
                        progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10333c);
                        if (progressBarRangeInfo != null) {
                            f2 = progressBarRangeInfo.f10286a;
                            closedFloatingPointRange = progressBarRangeInfo.f10287b;
                            semanticsPropertyKey4 = SemanticsActions.f10308i;
                            if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                accessibilityNodeInfoCompat2.i("android.widget.SeekBar");
                            } else {
                                accessibilityNodeInfoCompat2.i("android.widget.ProgressBar");
                            }
                            ProgressBarRangeInfo.d.getClass();
                            if (progressBarRangeInfo != ProgressBarRangeInfo.f10285e) {
                                accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue(), f2));
                            }
                            if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                fFloatValue = closedFloatingPointRange.f().floatValue();
                                fFloatValue2 = closedFloatingPointRange.i().floatValue();
                                if (fFloatValue < fFloatValue2) {
                                    fFloatValue = fFloatValue2;
                                }
                                if (f2 < fFloatValue) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                }
                                fFloatValue3 = closedFloatingPointRange.i().floatValue();
                                fFloatValue4 = closedFloatingPointRange.f().floatValue();
                                if (fFloatValue3 > fFloatValue4) {
                                    fFloatValue3 = fFloatValue4;
                                }
                                if (f2 > fFloatValue3) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                }
                            }
                        }
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionSetProgress, accessibilityAction11.f10269a));
                        }
                        collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f);
                        if (collectionInfo != null) {
                            accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(collectionInfo.f10274a, collectionInfo.f10275b, 0));
                        } else {
                            arrayList2 = new ArrayList();
                            if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10334e) != null) {
                                listJ2 = SemanticsNode.j(4, semanticsNode5);
                                size4 = listJ2.size();
                                while (i5 < size4) {
                                    semanticsNode = (SemanticsNode) listJ2.get(i5);
                                    if (semanticsNode.k().f10312b.c(SemanticsProperties.J)) {
                                        arrayList2.add(semanticsNode);
                                    }
                                }
                            }
                            if (!arrayList2.isEmpty()) {
                                zA2 = CollectionInfo_androidKt.a(arrayList2);
                                if (zA2) {
                                    size2 = 1;
                                } else {
                                    size2 = arrayList2.size();
                                }
                                if (zA2) {
                                    size3 = arrayList2.size();
                                } else {
                                    size3 = 1;
                                }
                                accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(size2, size3, 0));
                            }
                        }
                        CollectionInfo_androidKt.b(semanticsNode5, accessibilityNodeInfoCompat2);
                        scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.v);
                        AccessibilityAction accessibilityAction19 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.d);
                        if (scrollAxisRange != null) {
                            if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null) {
                                accessibilityNodeInfoCompat2.i("android.widget.HorizontalScrollView");
                            }
                            if (((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                accessibilityNodeInfoCompat2.m(true);
                            }
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange)) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                    if (layoutNode.B == LayoutDirection.Rtl) {
                                        accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                    } else {
                                        accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                    }
                                    accessibilityNodeInfoCompat2.b(accessibilityActionCompat2);
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange)) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                    if (layoutNode.B == LayoutDirection.Rtl) {
                                        accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.q;
                                    } else {
                                        accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.o;
                                    }
                                    accessibilityNodeInfoCompat2.b(accessibilityActionCompat);
                                }
                            }
                        }
                        scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.w);
                        if (scrollAxisRange2 != null) {
                            if (SemanticsConfigurationKt.a(semanticsNode5.k(), SemanticsProperties.f10335f) == null) {
                                accessibilityNodeInfoCompat2.i("android.widget.ScrollView");
                            }
                            if (((Number) scrollAxisRange2.f10299b.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                accessibilityNodeInfoCompat2.m(true);
                            }
                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                                if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange2)) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.p);
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange2)) {
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.n);
                                }
                            }
                        }
                        role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.z);
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                            Role.f10289b.getClass();
                            int i2110 = Role.f10295j;
                            if (role != null) {
                                accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.y);
                                if (accessibilityAction7 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction7.f10269a));
                                }
                                accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.A);
                                if (accessibilityAction8 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction8.f10269a));
                                }
                                accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.z);
                                if (accessibilityAction9 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction9.f10269a));
                                }
                                accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.B);
                                if (accessibilityAction10 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction10.f10269a));
                                }
                            } else {
                                accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.y);
                                if (accessibilityAction7 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction7.f10269a));
                                }
                                accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.A);
                                if (accessibilityAction8 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction8.f10269a));
                                }
                                accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.z);
                                if (accessibilityAction9 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction9.f10269a));
                                }
                                accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.B);
                                if (accessibilityAction10 != null) {
                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction10.f10269a));
                                }
                            }
                        }
                        accessibilityNodeInfo.setPaneTitle((CharSequence) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.d));
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode5)) {
                            i6 = i2;
                            semanticsConfiguration2 = semanticsConfiguration2;
                            androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                        } else {
                            accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.t);
                            if (accessibilityAction4 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction4.f10269a));
                            }
                            accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.u);
                            if (accessibilityAction5 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction5.f10269a));
                            }
                            accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsActions.v);
                            if (accessibilityAction6 != null) {
                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction6.f10269a));
                            }
                            semanticsPropertyKey3 = SemanticsActions.x;
                            if (semanticsConfiguration2.f10312b.c(semanticsPropertyKey3)) {
                                list2 = (List) semanticsConfiguration2.f(semanticsPropertyKey3);
                                if (list2.size() >= mutableIntList2.f3256b) {
                                    md.k(defpackage.a.i(mutableIntList2.f3256b, " custom actions for one widget", new StringBuilder("Can't have more than ")));
                                    return null;
                                }
                                sparseArrayCompat2 = new SparseArrayCompat(0, 1, null);
                                mutableObjectIntMapA = ObjectIntMapKt.a();
                                sparseArrayCompat3 = sparseArrayCompat;
                                if (sparseArrayCompat3.f3383b) {
                                    SparseArrayCompatKt.a(sparseArrayCompat3);
                                }
                                i6 = i2;
                                if (ContainerHelpersKt.a(sparseArrayCompat3.f3385e, i6, sparseArrayCompat3.f3384c) >= 0) {
                                    mutableObjectIntMap = (MutableObjectIntMap) sparseArrayCompat3.b(i6);
                                    mutableIntList = new MutableIntList(0, 1, null);
                                    iArr = mutableIntList2.f3255a;
                                    i8 = mutableIntList2.f3256b;
                                    while (i9 < i8) {
                                        mutableIntList.e(iArr[i9]);
                                    }
                                    arrayList3 = new ArrayList();
                                    size6 = list2.size();
                                    i10 = 0;
                                    while (i10 < size6) {
                                        customAccessibilityAction = (CustomAccessibilityAction) list2.get(i10);
                                        mutableObjectIntMap.getClass();
                                        int i2111 = size6;
                                        str4 = customAccessibilityAction.f10279a;
                                        int i32 = i10;
                                        str5 = customAccessibilityAction.f10279a;
                                        if (mutableObjectIntMap.a(str4) >= 0) {
                                            iB3 = mutableObjectIntMap.b(str5);
                                            sparseArrayCompat2.d(iB3, str5);
                                            mutableObjectIntMapA.h(iB3, str5);
                                            iArr2 = mutableIntList.f3255a;
                                            i12 = mutableIntList.f3256b;
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= i12) {
                                                    i13 = -1;
                                                    break;
                                                }
                                                i14 = i12;
                                                if (iB3 == iArr2[i13]) {
                                                    break;
                                                    break;
                                                }
                                                i13++;
                                                i12 = i14;
                                            }
                                            if (i13 >= 0) {
                                                mutableIntList.g(i13);
                                            }
                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB3, str5));
                                        } else {
                                            arrayList3.add(customAccessibilityAction);
                                        }
                                        i10 = i32 + 1;
                                        size6 = i2111;
                                        mutableObjectIntMap = mutableObjectIntMap;
                                    }
                                    size7 = arrayList3.size();
                                    while (i11 < size7) {
                                        CustomAccessibilityAction customAccessibilityAction6 = (CustomAccessibilityAction) arrayList3.get(i11);
                                        int iB9 = mutableIntList.b(i11);
                                        String str15 = customAccessibilityAction6.f10279a;
                                        String str16 = customAccessibilityAction6.f10279a;
                                        sparseArrayCompat2.d(iB9, str15);
                                        mutableObjectIntMapA.h(iB9, str16);
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB9, str16));
                                    }
                                } else {
                                    size5 = list2.size();
                                    while (i7 < size5) {
                                        CustomAccessibilityAction customAccessibilityAction7 = (CustomAccessibilityAction) list2.get(i7);
                                        int iB10 = mutableIntList2.b(i7);
                                        String str17 = customAccessibilityAction7.f10279a;
                                        String str18 = customAccessibilityAction7.f10279a;
                                        sparseArrayCompat2.d(iB10, str17);
                                        mutableObjectIntMapA.h(iB10, str18);
                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iB10, str18));
                                    }
                                }
                                androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                                androidComposeViewAccessibilityDelegateCompat2.s.d(i6, sparseArrayCompat2);
                                sparseArrayCompat3.d(i6, mutableObjectIntMapA);
                            } else {
                                i6 = i2;
                                semanticsConfiguration2 = semanticsConfiguration2;
                                androidComposeViewAccessibilityDelegateCompat2 = androidComposeViewAccessibilityDelegateCompat;
                            }
                        }
                        accessibilityNodeInfo.setScreenReaderFocusable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b(semanticsNode5, resources));
                        iB = androidComposeViewAccessibilityDelegateCompat2.C.b(i6);
                        if (iB != -1) {
                            androidViewHolderC2 = SemanticsUtils_androidKt.c(androidComposeView.getAndroidViewsHandler$ui(), iB);
                            if (androidViewHolderC2 != null) {
                                accessibilityNodeInfo.setTraversalBefore(androidViewHolderC2);
                            } else {
                                accessibilityNodeInfo.setTraversalBefore(androidComposeView, iB);
                            }
                            bundle = null;
                            androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.E, null);
                        } else {
                            bundle = null;
                        }
                        iB2 = androidComposeViewAccessibilityDelegateCompat2.D.b(i6);
                        if (iB2 != -1) {
                            accessibilityNodeInfo.setTraversalAfter(androidViewHolderC);
                            androidComposeViewAccessibilityDelegateCompat2.j(i6, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat2.F, bundle);
                        }
                        str3 = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsPropertiesAndroid.f10356b);
                        if (str3 != null) {
                            accessibilityNodeInfoCompat2.i(str3);
                        }
                        accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                    } else {
                        i6 = i2;
                        accessibilityNodeInfoCompat = null;
                    }
                }
            }
            if (androidComposeViewAccessibilityDelegateCompat2.p) {
                if (i6 == androidComposeViewAccessibilityDelegateCompat2.l) {
                    androidComposeViewAccessibilityDelegateCompat2.n = accessibilityNodeInfoCompat;
                }
                if (i6 == androidComposeViewAccessibilityDelegateCompat2.m) {
                    androidComposeViewAccessibilityDelegateCompat2.o = accessibilityNodeInfoCompat;
                }
            }
            return accessibilityNodeInfoCompat;
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat c(int i2) {
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            if (i2 != 1) {
                if (i2 == 2) {
                    return b(androidComposeViewAccessibilityDelegateCompat.l);
                }
                md.n(pq0.k(i2, "Unknown focus type: "));
                return null;
            }
            int i3 = androidComposeViewAccessibilityDelegateCompat.m;
            if (i3 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i3);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:129:0x026f  */
        /* JADX WARN: Code duplicated, block: B:280:0x04ee  */
        /* JADX WARN: Code duplicated, block: B:282:0x0509  */
        /* JADX WARN: Code duplicated, block: B:287:0x0525  */
        /* JADX WARN: Code duplicated, block: B:291:0x0533  */
        /* JADX WARN: Code duplicated, block: B:293:0x053f A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:328:0x05bf  */
        /* JADX WARN: Code duplicated, block: B:331:0x05cc A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:333:0x05d0  */
        /* JADX WARN: Code duplicated, block: B:334:0x05d5  */
        /* JADX WARN: Code duplicated, block: B:336:0x05de A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:337:0x05e0  */
        /* JADX WARN: Code duplicated, block: B:340:0x05e5  */
        /* JADX WARN: Code duplicated, block: B:343:0x05ec  */
        /* JADX WARN: Code duplicated, block: B:345:0x05f4  */
        /* JADX WARN: Code duplicated, block: B:352:0x0611  */
        /* JADX WARN: Code duplicated, block: B:354:0x0615  */
        /* JADX WARN: Code duplicated, block: B:355:0x061e  */
        /* JADX WARN: Code duplicated, block: B:357:0x0626  */
        /* JADX WARN: Code duplicated, block: B:437:0x074d  */
        /* JADX WARN: Code duplicated, block: B:442:0x076a  */
        /* JADX WARN: Code duplicated, block: B:449:0x077c  */
        /* JADX WARN: Code duplicated, block: B:451:0x0785  */
        /* JADX WARN: Code duplicated, block: B:453:0x0798  */
        /* JADX WARN: Code duplicated, block: B:455:0x07a1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x01c3 -> B:102:0x01c4). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:102:0x01c4
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
            */
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final boolean d(int r24, int r25, android.os.Bundle r26) {
            /*
                Method dump skipped, instruction units count: 2326
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.ComposeAccessibilityNodeProvider.d(int, int, android.os.Bundle):boolean");
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;", "", "Landroidx/compose/ui/semantics/SemanticsNode;", "node", "", "action", "granularity", "fromIndex", "toIndex", "", "traverseTime", "<init>", "(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PendingTextTraversedEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SemanticsNode f9906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9908c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f9909e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f9910f;

        public PendingTextTraversedEvent(SemanticsNode semanticsNode, int i2, int i3, int i4, int i5, long j2) {
            this.f9906a = semanticsNode;
            this.f9907b = i2;
            this.f9908c = i3;
            this.d = i4;
            this.f9909e = i5;
            this.f9910f = j2;
        }
    }

    static {
        new Companion(null);
        int[] iArr = {com.vuitton.android.R.id.accessibility_custom_action_0, com.vuitton.android.R.id.accessibility_custom_action_1, com.vuitton.android.R.id.accessibility_custom_action_2, com.vuitton.android.R.id.accessibility_custom_action_3, com.vuitton.android.R.id.accessibility_custom_action_4, com.vuitton.android.R.id.accessibility_custom_action_5, com.vuitton.android.R.id.accessibility_custom_action_6, com.vuitton.android.R.id.accessibility_custom_action_7, com.vuitton.android.R.id.accessibility_custom_action_8, com.vuitton.android.R.id.accessibility_custom_action_9, com.vuitton.android.R.id.accessibility_custom_action_10, com.vuitton.android.R.id.accessibility_custom_action_11, com.vuitton.android.R.id.accessibility_custom_action_12, com.vuitton.android.R.id.accessibility_custom_action_13, com.vuitton.android.R.id.accessibility_custom_action_14, com.vuitton.android.R.id.accessibility_custom_action_15, com.vuitton.android.R.id.accessibility_custom_action_16, com.vuitton.android.R.id.accessibility_custom_action_17, com.vuitton.android.R.id.accessibility_custom_action_18, com.vuitton.android.R.id.accessibility_custom_action_19, com.vuitton.android.R.id.accessibility_custom_action_20, com.vuitton.android.R.id.accessibility_custom_action_21, com.vuitton.android.R.id.accessibility_custom_action_22, com.vuitton.android.R.id.accessibility_custom_action_23, com.vuitton.android.R.id.accessibility_custom_action_24, com.vuitton.android.R.id.accessibility_custom_action_25, com.vuitton.android.R.id.accessibility_custom_action_26, com.vuitton.android.R.id.accessibility_custom_action_27, com.vuitton.android.R.id.accessibility_custom_action_28, com.vuitton.android.R.id.accessibility_custom_action_29, com.vuitton.android.R.id.accessibility_custom_action_30, com.vuitton.android.R.id.accessibility_custom_action_31};
        MutableIntList mutableIntList = IntListKt.f3257a;
        MutableIntList mutableIntList2 = new MutableIntList(32);
        int i2 = mutableIntList2.f3256b;
        if (i2 < 0) {
            az.v("");
            return;
        }
        int i3 = i2 + 32;
        mutableIntList2.f(i3);
        int[] iArr2 = mutableIntList2.f3255a;
        int i4 = mutableIntList2.f3256b;
        if (i2 != i4) {
            ArraysKt.i(i3, i2, i4, iArr2, iArr2);
        }
        ArraysKt.m(i2, 0, 12, iArr, iArr2);
        mutableIntList2.f3256b += 32;
        O = mutableIntList2;
    }

    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.f9899e = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.f9901h = (android.view.accessibility.AccessibilityManager) systemService;
        this.f9902i = 100L;
        new Handler(Looper.getMainLooper());
        this.f9904k = new ComposeAccessibilityNodeProvider();
        this.l = Integer.MIN_VALUE;
        this.m = Integer.MIN_VALUE;
        int i2 = 0;
        int i3 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.q = new MutableIntObjectMap(i2, i3, defaultConstructorMarker);
        this.r = new MutableIntObjectMap(i2, i3, defaultConstructorMarker);
        this.s = new SparseArrayCompat(i2, i3, defaultConstructorMarker);
        this.t = new SparseArrayCompat(i2, i3, defaultConstructorMarker);
        this.u = -1;
        this.w = new ArraySet(i2, i3, defaultConstructorMarker);
        this.x = ChannelKt.a(1, 6, null);
        this.y = true;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.f3262a;
        mutableIntObjectMap.getClass();
        this.A = mutableIntObjectMap;
        this.B = new MutableIntSet(i2, i3, defaultConstructorMarker);
        this.C = new MutableIntIntMap(i2, i3, defaultConstructorMarker);
        this.D = new MutableIntIntMap(i2, i3, defaultConstructorMarker);
        this.E = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.F = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.G = new URLSpanCache();
        this.H = IntObjectMapKt.a();
        this.I = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().a(), mutableIntObjectMap);
        int i4 = IntIntMapKt.f3253a;
        this.K = new MutableIntIntMap(i2, i3, defaultConstructorMarker);
        androidComposeView.addOnAttachStateChangeListener(this);
        this.L = new z1(this, 2);
        this.M = new ArrayList();
        this.N = new Function1<ScrollObservationScope, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj;
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.O;
                if (scrollObservationScope.f10147c.contains(scrollObservationScope)) {
                    AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.f9920c;
                    OwnerSnapshotObserver snapshotObserver = androidComposeViewAccessibilityDelegateCompat.f9899e.getSnapshotObserver();
                    snapshotObserver.f9812a.e(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat.N, new AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat));
                }
                return Unit.f71739a;
            }
        };
    }

    public static /* synthetic */ void E(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i2, int i3, Integer num, int i4) {
        if ((i4 & 4) != 0) {
            num = null;
        }
        androidComposeViewAccessibilityDelegateCompat.D(i2, i3, num, null);
    }

    public static Rect L(Outline outline, float f2, float f3) {
        if (!(outline instanceof Outline.Rectangle) && !(outline instanceof Outline.Rounded)) {
            return null;
        }
        androidx.compose.ui.geometry.Rect f8903a = outline.getF8903a();
        return new Rect((int) (f8903a.f8811a + f2), (int) (f8903a.f8812b + f3), (int) (f8903a.f8813c + f2), (int) (f8903a.d + f3));
    }

    public static float[] N(Outline outline) {
        if (!(outline instanceof Outline.Rounded)) {
            return null;
        }
        RoundRect roundRect = ((Outline.Rounded) outline).f8904a;
        long j2 = roundRect.f8817e;
        long j3 = roundRect.f8819h;
        long j4 = roundRect.g;
        long j5 = roundRect.f8818f;
        return new float[]{Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (roundRect.f8817e & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j5 >> 32)), Float.intBitsToFloat((int) (j5 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax))};
    }

    public static Region O(Outline outline, float f2, float f3) {
        if (outline instanceof Outline.Generic) {
            Path path = ((Outline.Generic) outline).f8902a;
            androidx.compose.ui.geometry.Rect rectH = path.getBounds().h(f2, f3);
            Region region = new Region(new Rect((int) (rectH.f8811a + Call.Parameters.DEFAULT_CAMERA_ZOOM), (int) (rectH.f8812b + Call.Parameters.DEFAULT_CAMERA_ZOOM), (int) (rectH.f8813c + Call.Parameters.DEFAULT_CAMERA_ZOOM), (int) (rectH.d + Call.Parameters.DEFAULT_CAMERA_ZOOM)));
            Region region2 = new Region();
            if (path instanceof AndroidPath) {
                android.graphics.Path path2 = ((AndroidPath) path).f8841a;
                path2.offset(f2, f3);
                region2.setPath(path2, region);
                return region2;
            }
            mt.i("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    public static CharSequence P(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            int i2 = 100000;
            if (charSequence.length() > 100000) {
                if (Character.isHighSurrogate(charSequence.charAt(99999)) && Character.isLowSurrogate(charSequence.charAt(100000))) {
                    i2 = 99999;
                }
                CharSequence charSequenceSubSequence = charSequence.subSequence(0, i2);
                charSequenceSubSequence.getClass();
                return charSequenceSubSequence;
            }
        }
        return charSequence;
    }

    public static String t(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode != null) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
            if (semanticsConfiguration.f10312b.c(semanticsPropertyKey)) {
                return ListUtilsKt.a((List) semanticsConfiguration.f(semanticsPropertyKey), ",", null, 62);
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.G;
            if (semanticsConfiguration.f10312b.c(semanticsPropertyKey2)) {
                AnnotatedString annotatedString2 = (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey2);
                if (annotatedString2 != null) {
                    return annotatedString2.f10420c;
                }
            } else {
                List list = (List) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.C);
                if (list != null && (annotatedString = (AnnotatedString) CollectionsKt.firstOrNull(list)) != null) {
                    return annotatedString.f10420c;
                }
            }
        }
        return null;
    }

    public static final boolean x(ScrollAxisRange scrollAxisRange, float f2) {
        Function0 function0 = scrollAxisRange.f10298a;
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || ((Number) function0.mo47invoke()).floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && ((Number) function0.mo47invoke()).floatValue() < ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue();
        }
        return true;
    }

    public static final boolean y(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.f10298a;
        boolean z = scrollAxisRange.f10300c;
        if (((Number) function0.mo47invoke()).floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || z) {
            return ((Number) function0.mo47invoke()).floatValue() < ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() && z;
        }
        return true;
    }

    public static final boolean z(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.f10298a;
        boolean z = scrollAxisRange.f10300c;
        if (((Number) function0.mo47invoke()).floatValue() >= ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() || z) {
            return ((Number) function0.mo47invoke()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM && z;
        }
        return true;
    }

    public final int A(int i2) {
        if (i2 == this.f9899e.getSemanticsOwner().a().f10322f) {
            return -1;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[LOOP:1: B:15:0x004c->B:28:0x0088, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x008b A[EDGE_INSN: B:44:0x008b->B:29:0x008b BREAK  A[LOOP:1: B:15:0x004c->B:28:0x0088], SYNTHETIC] */
    public final void B(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        MutableIntSet mutableIntSetA = IntSetKt.a();
        List listJ = SemanticsNode.j(4, semanticsNode);
        LayoutNode layoutNode = semanticsNode.f10320c;
        int size = listJ.size();
        for (int i2 = 0; i2 < size; i2++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listJ.get(i2);
            IntObjectMap intObjectMapS = s();
            int i3 = semanticsNode2.f10322f;
            if (intObjectMapS.a(i3)) {
                if (!semanticsNodeCopy.f10151b.a(i3)) {
                    w(layoutNode);
                    return;
                }
                mutableIntSetA.b(i3);
            }
        }
        MutableIntSet mutableIntSet = semanticsNodeCopy.f10151b;
        int[] iArr = mutableIntSet.f3264b;
        long[] jArr = mutableIntSet.f3263a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i4 = 0;
            while (true) {
                long j2 = jArr[i4];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i4 != length) {
                        break;
                        break;
                    }
                    i4++;
                } else {
                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                    for (int i6 = 0; i6 < i5; i6++) {
                        if ((255 & j2) < 128 && !mutableIntSetA.a(iArr[(i4 << 3) + i6])) {
                            w(layoutNode);
                            return;
                        }
                        j2 >>= 8;
                    }
                    if (i5 != 8) {
                        break;
                    } else if (i4 != length) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        List listJ2 = SemanticsNode.j(4, semanticsNode);
        int size2 = listJ2.size();
        for (int i7 = 0; i7 < size2; i7++) {
            SemanticsNode semanticsNode3 = (SemanticsNode) listJ2.get(i7);
            SemanticsNodeCopy semanticsNodeCopy2 = (SemanticsNodeCopy) this.H.b(semanticsNode3.f10322f);
            if (semanticsNodeCopy2 != null && s().a(semanticsNode3.f10322f)) {
                B(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    public final boolean C(AccessibilityEvent accessibilityEvent) {
        if (!v()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.p = true;
        }
        try {
            return ((Boolean) ((AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1) this.g).invoke(accessibilityEvent)).booleanValue();
        } finally {
            this.p = false;
        }
    }

    public final boolean D(int i2, int i3, Integer num, List list) {
        if (i2 == Integer.MIN_VALUE || !v()) {
            return false;
        }
        AccessibilityEvent accessibilityEventO = o(i2, i3);
        if (num != null) {
            accessibilityEventO.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            accessibilityEventO.setContentDescription(ListUtilsKt.a(list, ",", null, 62));
        }
        return C(accessibilityEventO);
    }

    public final void F(int i2, int i3, String str) {
        AccessibilityEvent accessibilityEventO = o(A(i2), 32);
        accessibilityEventO.setContentChangeTypes(i3);
        if (str != null) {
            accessibilityEventO.getText().add(str);
        }
        C(accessibilityEventO);
    }

    public final void G(int i2) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.z;
        if (pendingTextTraversedEvent != null) {
            SemanticsNode semanticsNode = pendingTextTraversedEvent.f9906a;
            if (i2 != semanticsNode.f10322f) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.f9910f <= 1000) {
                AccessibilityEvent accessibilityEventO = o(A(semanticsNode.f10322f), 131072);
                accessibilityEventO.setFromIndex(pendingTextTraversedEvent.d);
                accessibilityEventO.setToIndex(pendingTextTraversedEvent.f9909e);
                accessibilityEventO.setAction(pendingTextTraversedEvent.f9907b);
                accessibilityEventO.setMovementGranularity(pendingTextTraversedEvent.f9908c);
                accessibilityEventO.getText().add(t(semanticsNode));
                C(accessibilityEventO);
            }
        }
        this.z = null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:103:0x030f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0313  */
    /* JADX WARN: Code duplicated, block: B:108:0x031e  */
    /* JADX WARN: Code duplicated, block: B:111:0x032b A[LOOP:4: B:106:0x031a->B:111:0x032b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:116:0x033a  */
    /* JADX WARN: Code duplicated, block: B:119:0x034e A[LOOP:5: B:114:0x0336->B:119:0x034e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:123:0x036d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:126:0x0374  */
    /* JADX WARN: Code duplicated, block: B:128:0x0378 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:131:0x037e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0382 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:136:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:139:0x03de A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:140:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:142:0x0402  */
    /* JADX WARN: Code duplicated, block: B:143:0x0425  */
    /* JADX WARN: Code duplicated, block: B:145:0x0444  */
    /* JADX WARN: Code duplicated, block: B:147:0x044c  */
    /* JADX WARN: Code duplicated, block: B:152:0x0491  */
    /* JADX WARN: Code duplicated, block: B:154:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:156:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:177:0x054b A[PHI: r50
      0x054b: PHI (r50v11 int) = (r50v10 int), (r50v10 int), (r50v10 int), (r50v10 int), (r50v10 int), (r50v13 int) binds: [B:181:0x0558, B:186:0x0565, B:189:0x0574, B:196:0x0580, B:193:0x057b, B:176:0x0549] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:202:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:227:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:246:0x0332 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0334 A[EDGE_INSN: B:247:0x0334->B:113:0x0334 BREAK  A[LOOP:4: B:106:0x031a->B:111:0x032b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x0351 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x0353 A[EDGE_INSN: B:249:0x0353->B:121:0x0353 BREAK  A[LOOP:5: B:114:0x0336->B:119:0x034e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0183  */
    /* JADX WARN: Code duplicated, block: B:47:0x018b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0198  */
    /* JADX WARN: Code duplicated, block: B:50:0x019c  */
    /* JADX WARN: Code duplicated, block: B:52:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:53:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:55:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:56:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:58:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:62:0x0202  */
    /* JADX WARN: Code duplicated, block: B:64:0x020b  */
    /* JADX WARN: Code duplicated, block: B:66:0x021c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0223  */
    /* JADX WARN: Code duplicated, block: B:71:0x0233  */
    /* JADX WARN: Code duplicated, block: B:73:0x0258  */
    /* JADX WARN: Code duplicated, block: B:74:0x025d  */
    /* JADX WARN: Code duplicated, block: B:77:0x026c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0271  */
    /* JADX WARN: Code duplicated, block: B:80:0x0274  */
    /* JADX WARN: Code duplicated, block: B:82:0x0279  */
    /* JADX WARN: Code duplicated, block: B:84:0x0286  */
    /* JADX WARN: Code duplicated, block: B:87:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:89:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:90:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:92:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:94:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:97:0x02f5  */
    /*  JADX ERROR: NullPointerException in pass: ProcessVariables
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    public final void H(androidx.collection.IntObjectMap r57) {
        /*
            Method dump skipped, instruction units count: 1833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.H(androidx.collection.IntObjectMap):void");
    }

    public final void I(LayoutNode layoutNode, MutableIntSet mutableIntSet) {
        SemanticsConfiguration semanticsConfigurationI;
        LayoutNode layoutNodeC;
        if (layoutNode.c() && !this.f9899e.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            if (!layoutNode.H.d(8)) {
                layoutNode = AndroidComposeViewAccessibilityDelegateCompat_androidKt.c(layoutNode, AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1.f9922c);
            }
            if (layoutNode == null || (semanticsConfigurationI = layoutNode.i()) == null) {
                return;
            }
            if (!semanticsConfigurationI.f10314e && (layoutNodeC = AndroidComposeViewAccessibilityDelegateCompat_androidKt.c(layoutNode, AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.f9921c)) != null) {
                layoutNode = layoutNodeC;
            }
            int i2 = layoutNode.f9689c;
            if (mutableIntSet.b(i2)) {
                E(this, A(i2), 2048, 1, 8);
            }
        }
    }

    public final void J(LayoutNode layoutNode) {
        if (layoutNode.c() && !this.f9899e.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            int i2 = layoutNode.f9689c;
            ScrollAxisRange scrollAxisRange = (ScrollAxisRange) this.q.b(i2);
            ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) this.r.b(i2);
            if (scrollAxisRange == null && scrollAxisRange2 == null) {
                return;
            }
            AccessibilityEvent accessibilityEventO = o(i2, 4096);
            if (scrollAxisRange != null) {
                accessibilityEventO.setScrollX((int) ((Number) scrollAxisRange.f10298a.mo47invoke()).floatValue());
                accessibilityEventO.setMaxScrollX((int) ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue());
            }
            if (scrollAxisRange2 != null) {
                accessibilityEventO.setScrollY((int) ((Number) scrollAxisRange2.f10298a.mo47invoke()).floatValue());
                accessibilityEventO.setMaxScrollY((int) ((Number) scrollAxisRange2.f10299b.mo47invoke()).floatValue());
            }
            C(accessibilityEventO);
        }
    }

    public final boolean K(SemanticsNode semanticsNode, int i2, int i3, boolean z) {
        String strT;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        int i4 = semanticsNode.f10322f;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.f10309j;
        if (semanticsConfiguration.f10312b.c(semanticsPropertyKey) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode)) {
            Function3 function3 = (Function3) ((AccessibilityAction) semanticsConfiguration.f(semanticsPropertyKey)).f10270b;
            if (function3 != null) {
                return ((Boolean) function3.A(Integer.valueOf(i2), Integer.valueOf(i3), Boolean.valueOf(z))).booleanValue();
            }
        } else if ((i2 != i3 || i3 != this.u) && (strT = t(semanticsNode)) != null) {
            if (i2 < 0 || i2 != i3 || i3 > strT.length()) {
                i2 = -1;
            }
            this.u = i2;
            boolean z2 = strT.length() > 0;
            C(p(A(i4), z2 ? Integer.valueOf(this.u) : null, z2 ? Integer.valueOf(this.u) : null, z2 ? Integer.valueOf(strT.length()) : null, strT));
            G(i4);
            return true;
        }
        return false;
    }

    public final Rect M(float f2, float f3, float f4, float f5) {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        Offset.Companion companion = Offset.f8806b;
        AndroidComposeView androidComposeView = this.f9899e;
        long jH = androidComposeView.h(jFloatToRawIntBits);
        long jH2 = androidComposeView.h((((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f4) << 32));
        int i2 = (int) (jH >> 32);
        int i3 = (int) (jH2 >> 32);
        int iFloor = (int) Math.floor(Math.min(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3)));
        int i4 = (int) (jH & BodyPartID.bodyIdMax);
        float fIntBitsToFloat = Float.intBitsToFloat(i4);
        int i5 = (int) (jH2 & BodyPartID.bodyIdMax);
        return new Rect(iFloor, (int) Math.floor(Math.min(fIntBitsToFloat, Float.intBitsToFloat(i5))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i4), Float.intBitsToFloat(i5))));
    }

    public final void Q() {
        char c2;
        long j2;
        long j3;
        long j4;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int i2;
        int[] iArr2;
        long j5;
        int iNumberOfTrailingZeros;
        char c3;
        long j6;
        SemanticsConfiguration semanticsConfiguration;
        MutableIntSet mutableIntSet = new MutableIntSet(0, 1, null);
        MutableIntSet mutableIntSet2 = this.B;
        int[] iArr3 = mutableIntSet2.f3264b;
        long[] jArr3 = mutableIntSet2.f3263a;
        int length = jArr3.length - 2;
        MutableIntObjectMap mutableIntObjectMap = this.H;
        char c4 = 7;
        long j7 = -9187201950435737472L;
        int i3 = 8;
        if (length >= 0) {
            int i4 = 0;
            j3 = 128;
            while (true) {
                long j8 = jArr3[i4];
                j4 = 255;
                if ((((~j8) << c4) & j8 & j7) != j7) {
                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j8 & 255) < 128) {
                            int i7 = iArr3[(i4 << 3) + i6];
                            c3 = c4;
                            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i7);
                            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.f10325a : null;
                            if (semanticsNode != null) {
                                j6 = j7;
                                if (!semanticsNode.d.f10312b.c(SemanticsProperties.d)) {
                                }
                            } else {
                                j6 = j7;
                            }
                            mutableIntSet.b(i7);
                            SemanticsNodeCopy semanticsNodeCopy = (SemanticsNodeCopy) mutableIntObjectMap.b(i7);
                            F(i7, 32, (semanticsNodeCopy == null || (semanticsConfiguration = semanticsNodeCopy.f10150a) == null) ? null : (String) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.d));
                        } else {
                            c3 = c4;
                            j6 = j7;
                        }
                        j8 >>= 8;
                        i6++;
                        c4 = c3;
                        j7 = j6;
                    }
                    c2 = c4;
                    j2 = j7;
                    if (i5 != 8) {
                        break;
                    }
                } else {
                    c2 = c4;
                    j2 = j7;
                }
                if (i4 == length) {
                    break;
                }
                i4++;
                c4 = c2;
                j7 = j2;
            }
        } else {
            c2 = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
            j4 = 255;
        }
        int[] iArr4 = mutableIntSet.f3264b;
        long[] jArr4 = mutableIntSet.f3263a;
        int length2 = jArr4.length - 2;
        if (length2 >= 0) {
            int i8 = 0;
            while (true) {
                long j9 = jArr4[i8];
                if ((((~j9) << c2) & j9 & j2) != j2) {
                    int i9 = 8 - ((~(i8 - length2)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j9 & j4) < j3) {
                            int i11 = iArr4[(i8 << 3) + i10];
                            int iHashCode = Integer.hashCode(i11) * (-862048943);
                            int i12 = iHashCode ^ (iHashCode << 16);
                            int i13 = i12 & CertificateBody.profileType;
                            int i14 = mutableIntSet2.f3265c;
                            int i15 = (i12 >>> 7) & i14;
                            i2 = i3;
                            int i16 = 0;
                            while (true) {
                                long[] jArr5 = mutableIntSet2.f3263a;
                                int i17 = i15 >> 3;
                                jArr2 = jArr4;
                                int i18 = (i15 & 7) << 3;
                                long j10 = (jArr5[i17] >>> i18) | ((jArr5[i17 + 1] << (64 - i18)) & ((-i18) >> 63));
                                j5 = j9;
                                long j11 = (((long) i13) * 72340172838076673L) ^ j10;
                                long j12 = (j11 - 72340172838076673L) & (~j11) & j2;
                                while (j12 != 0) {
                                    iNumberOfTrailingZeros = (i15 + (Long.numberOfTrailingZeros(j12) >> 3)) & i14;
                                    iArr2 = iArr4;
                                    if (mutableIntSet2.f3264b[iNumberOfTrailingZeros] == i11) {
                                        break;
                                    }
                                    j12 &= j12 - 1;
                                    iArr4 = iArr2;
                                }
                                iArr2 = iArr4;
                                if ((j10 & ((~j10) << 6) & j2) != 0) {
                                    iNumberOfTrailingZeros = -1;
                                    break;
                                }
                                i16 += 8;
                                i15 = (i15 + i16) & i14;
                                j9 = j5;
                                jArr4 = jArr2;
                                iArr4 = iArr2;
                            }
                            int i19 = iNumberOfTrailingZeros;
                            if (i19 >= 0) {
                                mutableIntSet2.h(i19);
                            }
                        } else {
                            jArr2 = jArr4;
                            i2 = i3;
                            iArr2 = iArr4;
                            j5 = j9;
                        }
                        j9 = j5 >> i2;
                        i10++;
                        i3 = i2;
                        jArr4 = jArr2;
                        iArr4 = iArr2;
                    }
                    jArr = jArr4;
                    iArr = iArr4;
                    if (i9 != i3) {
                        break;
                    }
                } else {
                    jArr = jArr4;
                    iArr = iArr4;
                }
                if (i8 == length2) {
                    break;
                }
                i8++;
                jArr4 = jArr;
                iArr4 = iArr;
                i3 = 8;
            }
        }
        mutableIntObjectMap.c();
        IntObjectMap intObjectMapS = s();
        int[] iArr5 = intObjectMapS.f3259b;
        Object[] objArr = intObjectMapS.f3260c;
        long[] jArr6 = intObjectMapS.f3258a;
        int length3 = jArr6.length - 2;
        if (length3 >= 0) {
            int i20 = 0;
            while (true) {
                long j13 = jArr6[i20];
                if ((((~j13) << c2) & j13 & j2) != j2) {
                    int i21 = 8 - ((~(i20 - length3)) >>> 31);
                    for (int i22 = 0; i22 < i21; i22++) {
                        if ((j13 & j4) < j3) {
                            int i23 = (i20 << 3) + i22;
                            int i24 = iArr5[i23];
                            SemanticsNode semanticsNode2 = ((SemanticsNodeWithAdjustedBounds) objArr[i23]).f10325a;
                            SemanticsConfiguration semanticsConfiguration2 = semanticsNode2.d;
                            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.d;
                            if (semanticsConfiguration2.f10312b.c(semanticsPropertyKey) && mutableIntSet2.b(i24)) {
                                F(i24, 16, (String) semanticsNode2.d.f(semanticsPropertyKey));
                            }
                            mutableIntObjectMap.i(i24, new SemanticsNodeCopy(semanticsNode2, s()));
                        }
                        j13 >>= 8;
                    }
                    if (i21 != 8) {
                        break;
                    }
                }
                if (i20 == length3) {
                    break;
                } else {
                    i20++;
                }
            }
        }
        this.I = new SemanticsNodeCopy(this.f9899e.getSemanticsOwner().a(), s());
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat b(View view) {
        return this.f9904k;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ce  */
    public final void j(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        SemanticsNode semanticsNode;
        TextLayoutResult textLayoutResultB;
        long jE;
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i2);
        if (semanticsNodeWithAdjustedBounds == null || (semanticsNode = semanticsNodeWithAdjustedBounds.f10325a) == null) {
            return;
        }
        LayoutNode layoutNode = semanticsNode.f10320c;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        String strT = t(semanticsNode);
        if (Intrinsics.c(str, this.E)) {
            int iB = this.C.b(i2);
            if (iB != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, iB);
                return;
            }
            return;
        }
        if (Intrinsics.c(str, this.F)) {
            int iB2 = this.D.b(i2);
            if (iB2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, iB2);
                return;
            }
            return;
        }
        boolean zC = semanticsConfiguration.f10312b.c(SemanticsActions.f10302a);
        AndroidComposeView androidComposeView = this.f9899e;
        if (zC && bundle != null && Intrinsics.c(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
            int i3 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
            int i4 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
            if (i4 <= 0 || i3 < 0) {
                return;
            }
            if (i3 < (strT != null ? strT.length() : Integer.MAX_VALUE) && (textLayoutResultB = SemanticsUtils_androidKt.b(semanticsConfiguration)) != null) {
                ArrayList arrayList = new ArrayList();
                int i5 = 0;
                while (i5 < i4) {
                    int i6 = i3 + i5;
                    RectF rectF = null;
                    if (i6 >= textLayoutResultB.f10552a.f10543a.f10420c.length()) {
                        arrayList.add(null);
                        i3 = i3;
                        i4 = i4;
                    } else {
                        androidx.compose.ui.geometry.Rect rectB = textLayoutResultB.b(i6);
                        NodeCoordinator nodeCoordinatorD = semanticsNode.d();
                        if (nodeCoordinatorD == null) {
                            Offset.f8806b.getClass();
                            jE = 0;
                        } else {
                            if (!nodeCoordinatorD.p1().o) {
                                nodeCoordinatorD = null;
                            }
                            if (nodeCoordinatorD != null) {
                                jE = LayoutCoordinatesKt.e(nodeCoordinatorD);
                            } else {
                                Offset.f8806b.getClass();
                                jE = 0;
                            }
                        }
                        androidx.compose.ui.geometry.Rect rectI = rectB.i(jE);
                        androidx.compose.ui.geometry.Rect rectG = semanticsNode.g();
                        androidx.compose.ui.geometry.Rect rectE = rectI.g(rectG) ? rectI.e(rectG) : null;
                        if (rectE != null) {
                            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(rectE.f8812b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(rectE.f8811a)) << 32);
                            Offset.Companion companion = Offset.f8806b;
                            long jH = androidComposeView.h(jFloatToRawIntBits);
                            long jH2 = androidComposeView.h((((long) Float.floatToRawIntBits(rectE.d)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(rectE.f8813c)) << 32));
                            int i7 = (int) (jH >> 32);
                            int i8 = (int) (jH2 >> 32);
                            float fMin = Math.min(Float.intBitsToFloat(i7), Float.intBitsToFloat(i8));
                            int i9 = (int) (jH & BodyPartID.bodyIdMax);
                            float fIntBitsToFloat = Float.intBitsToFloat(i9);
                            int i10 = (int) (jH2 & BodyPartID.bodyIdMax);
                            rectF = new RectF(fMin, Math.min(fIntBitsToFloat, Float.intBitsToFloat(i10)), Math.max(Float.intBitsToFloat(i7), Float.intBitsToFloat(i8)), Math.max(Float.intBitsToFloat(i9), Float.intBitsToFloat(i10)));
                        }
                        arrayList.add(rectF);
                    }
                    i5++;
                    i3 = i3;
                    i4 = i4;
                }
                accessibilityNodeInfo.getExtras().putParcelableArray(str, (Parcelable[]) arrayList.toArray(new RectF[0]));
                return;
            }
            return;
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.A;
        if (semanticsConfiguration.f10312b.c(semanticsPropertyKey) && bundle != null && Intrinsics.c(str, "androidx.compose.ui.semantics.testTag")) {
            String str2 = (String) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey);
            if (str2 != null) {
                accessibilityNodeInfo.getExtras().putCharSequence(str, str2);
                return;
            }
            return;
        }
        if (Intrinsics.c(str, "androidx.compose.ui.semantics.id")) {
            accessibilityNodeInfo.getExtras().putInt(str, semanticsNode.f10322f);
            return;
        }
        if (Intrinsics.c(str, "androidx.compose.ui.semantics.shapeType")) {
            Shape shape = (Shape) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.Q);
            if (shape != null) {
                Rect rect = new Rect();
                accessibilityNodeInfo.getBoundsInScreen(rect);
                androidx.compose.ui.geometry.Rect rectU = u(semanticsNode, rect, shape);
                long jC = rectU.c();
                float f2 = rectU.f8812b;
                float f3 = rectU.f8811a;
                Outline outlineA = shape.a(jC, layoutNode.B, androidComposeView.getDensity());
                if (outlineA instanceof Outline.Rectangle) {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 0);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", L(outlineA, f3, f2));
                    return;
                } else if (outlineA instanceof Outline.Rounded) {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 1);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", L(outlineA, f3, f2));
                    accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", N(outlineA));
                    return;
                } else if (!(outlineA instanceof Outline.Generic)) {
                    v40.g();
                    return;
                } else {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 2);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", O(outlineA, f3, f2));
                    return;
                }
            }
            return;
        }
        if (Intrinsics.c(str, "androidx.compose.ui.semantics.shapeRect")) {
            Shape shape2 = (Shape) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.Q);
            if (shape2 != null) {
                Rect rect2 = new Rect();
                accessibilityNodeInfo.getBoundsInScreen(rect2);
                androidx.compose.ui.geometry.Rect rectU2 = u(semanticsNode, rect2, shape2);
                Rect rectL = L(shape2.a(rectU2.c(), layoutNode.B, androidComposeView.getDensity()), rectU2.f8811a, rectU2.f8812b);
                if (rectL != null) {
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", rectL);
                    return;
                }
                return;
            }
            return;
        }
        if (Intrinsics.c(str, "androidx.compose.ui.semantics.shapeCorners")) {
            Shape shape3 = (Shape) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.Q);
            if (shape3 != null) {
                Rect rect3 = new Rect();
                accessibilityNodeInfo.getBoundsInScreen(rect3);
                float[] fArrN = N(shape3.a(u(semanticsNode, rect3, shape3).c(), layoutNode.B, androidComposeView.getDensity()));
                if (fArrN != null) {
                    accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", fArrN);
                    return;
                }
                return;
            }
            return;
        }
        if (Intrinsics.c(str, "androidx.compose.ui.semantics.shapeRegion")) {
            Shape shape4 = (Shape) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.Q);
            if (shape4 != null) {
                Rect rect4 = new Rect();
                accessibilityNodeInfo.getBoundsInScreen(rect4);
                androidx.compose.ui.geometry.Rect rectU3 = u(semanticsNode, rect4, shape4);
                Region regionO = O(shape4.a(rectU3.c(), layoutNode.B, androidComposeView.getDensity()), rectU3.f8811a, rectU3.f8812b);
                if (regionO != null) {
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", regionO);
                    return;
                }
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = semanticsConfiguration.d;
        if (mutableScatterSet == null) {
            return;
        }
        Object[] objArr = mutableScatterSet.f3368b;
        long[] jArr = mutableScatterSet.f3367a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j2 = jArr[i11];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                long j3 = j2;
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j3) < 128) {
                        SemanticsPropertyKey semanticsPropertyKey2 = (SemanticsPropertyKey) objArr[(i11 << 3) + i13];
                        String str3 = semanticsPropertyKey2.d;
                        if (Intrinsics.c(str3, str)) {
                            Object objA = SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey2);
                            if (objA instanceof Serializable) {
                                accessibilityNodeInfo.getExtras().putSerializable(str3, (Serializable) objA);
                            } else {
                                if (!(objA instanceof Parcelable)) {
                                    md.k("Accessibility extra values must be either Serializable or Parcelable.");
                                    return;
                                }
                                accessibilityNodeInfo.getExtras().putParcelable(str3, (Parcelable) objA);
                            }
                        } else {
                            continue;
                        }
                    }
                    j3 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    public final Rect k(SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds) {
        IntRect intRect = semanticsNodeWithAdjustedBounds.f10326b;
        return M(intRect.f11017a, intRect.f11018b, intRect.f11019c, intRect.d);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005e  */
    /* JADX WARN: Code duplicated, block: B:27:0x005f  */
    /* JADX WARN: Code duplicated, block: B:30:0x006a A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:24:0x0052, B:28:0x0062, B:30:0x006a, B:32:0x0073, B:34:0x0078, B:35:0x0087, B:38:0x0096, B:39:0x009d, B:20:0x0040, B:23:0x0047), top: B:46:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:24:0x0052, B:28:0x0062, B:30:0x006a, B:32:0x0073, B:34:0x0078, B:35:0x0087, B:38:0x0096, B:39:0x009d, B:20:0x0040, B:23:0x0047), top: B:46:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0078 A[Catch: all -> 0x0033, LOOP:0: B:33:0x0076->B:34:0x0078, LOOP_END, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:24:0x0052, B:28:0x0062, B:30:0x006a, B:32:0x0073, B:34:0x0078, B:35:0x0087, B:38:0x0096, B:39:0x009d, B:20:0x0040, B:23:0x0047), top: B:46:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0094 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r8, r0) == r1) goto L41;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00b6 -> B:14:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1 r0 = (androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1) r0
            int r1 = r0.f9914f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9914f = r1
            goto L18
        L13:
            androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1 r0 = new androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f9914f
            r3 = 0
            r4 = 0
            r5 = 2
            androidx.collection.ArraySet r6 = r11.w
            r7 = 1
            if (r2 == 0) goto L44
            if (r2 == r7) goto L3c
            if (r2 != r5) goto L36
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f9912c
            androidx.collection.MutableIntSet r3 = r0.f9911b
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L33
        L31:
            r12 = r3
            goto L52
        L33:
            r11 = move-exception
            goto Lbf
        L36:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r3
        L3c:
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f9912c
            androidx.collection.MutableIntSet r3 = r0.f9911b
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L33
            goto L62
        L44:
            kotlin.ResultKt.b(r12)
            androidx.collection.MutableIntSet r12 = new androidx.collection.MutableIntSet     // Catch: java.lang.Throwable -> L33
            r12.<init>(r4, r7, r3)     // Catch: java.lang.Throwable -> L33
            kotlinx.coroutines.channels.BufferedChannel r2 = r11.x     // Catch: java.lang.Throwable -> L33
            kotlinx.coroutines.channels.ChannelIterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L33
        L52:
            r0.f9911b = r12     // Catch: java.lang.Throwable -> L33
            r0.f9912c = r2     // Catch: java.lang.Throwable -> L33
            r0.f9914f = r7     // Catch: java.lang.Throwable -> L33
            java.lang.Object r3 = r2.a(r0)     // Catch: java.lang.Throwable -> L33
            if (r3 != r1) goto L5f
            goto Lb8
        L5f:
            r10 = r3
            r3 = r12
            r12 = r10
        L62:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L33
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> L33
            if (r12 == 0) goto Lb9
            r2.next()     // Catch: java.lang.Throwable -> L33
            boolean r12 = r11.v()     // Catch: java.lang.Throwable -> L33
            if (r12 == 0) goto L9d
            int r12 = r6.d     // Catch: java.lang.Throwable -> L33
            r8 = r4
        L76:
            if (r8 >= r12) goto L87
            java.lang.Object[] r9 = r6.f3230c     // Catch: java.lang.Throwable -> L33
            r9 = r9[r8]     // Catch: java.lang.Throwable -> L33
            androidx.compose.ui.node.LayoutNode r9 = (androidx.compose.ui.node.LayoutNode) r9     // Catch: java.lang.Throwable -> L33
            r11.I(r9, r3)     // Catch: java.lang.Throwable -> L33
            r11.J(r9)     // Catch: java.lang.Throwable -> L33
            int r8 = r8 + 1
            goto L76
        L87:
            r3.c()     // Catch: java.lang.Throwable -> L33
            androidx.compose.ui.platform.AndroidComposeView r12 = r11.f9899e     // Catch: java.lang.Throwable -> L33
            android.os.Handler r12 = r12.getHandler()     // Catch: java.lang.Throwable -> L33
            boolean r8 = r11.J     // Catch: java.lang.Throwable -> L33
            if (r8 != 0) goto L9d
            if (r12 == 0) goto L9d
            r11.J = r7     // Catch: java.lang.Throwable -> L33
            z1 r8 = r11.L     // Catch: java.lang.Throwable -> L33
            r12.post(r8)     // Catch: java.lang.Throwable -> L33
        L9d:
            r6.clear()     // Catch: java.lang.Throwable -> L33
            androidx.collection.MutableIntObjectMap r12 = r11.q     // Catch: java.lang.Throwable -> L33
            r12.c()     // Catch: java.lang.Throwable -> L33
            androidx.collection.MutableIntObjectMap r12 = r11.r     // Catch: java.lang.Throwable -> L33
            r12.c()     // Catch: java.lang.Throwable -> L33
            long r8 = r11.f9902i     // Catch: java.lang.Throwable -> L33
            r0.f9911b = r3     // Catch: java.lang.Throwable -> L33
            r0.f9912c = r2     // Catch: java.lang.Throwable -> L33
            r0.f9914f = r5     // Catch: java.lang.Throwable -> L33
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r8, r0)     // Catch: java.lang.Throwable -> L33
            if (r12 != r1) goto L31
        Lb8:
            return r1
        Lb9:
            r6.clear()
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        Lbf:
            r6.clear()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.l(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f7  */
    public final boolean m(long j2, int i2, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey;
        long[] jArr;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        int i3;
        ScrollAxisRange scrollAxisRange;
        if (Intrinsics.c(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            IntObjectMap intObjectMapS = s();
            Offset.f8806b.getClass();
            if (!Offset.c(j2, Offset.d) && (((9223372034707292159L & j2) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                if (z) {
                    semanticsPropertyKey = SemanticsProperties.w;
                } else {
                    if (z) {
                        v40.g();
                        return false;
                    }
                    semanticsPropertyKey = SemanticsProperties.v;
                }
                Object[] objArr3 = intObjectMapS.f3260c;
                long[] jArr3 = intObjectMapS.f3258a;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    int i4 = 0;
                    boolean z2 = false;
                    while (true) {
                        long j3 = jArr3[i4];
                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i5 = 8;
                            int i6 = 8 - ((~(i4 - length)) >>> 31);
                            int i7 = 0;
                            while (i7 < i6) {
                                if ((j3 & 255) < 128) {
                                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) objArr3[(i4 << 3) + i7];
                                    IntRect intRect = semanticsNodeWithAdjustedBounds.f10326b;
                                    i3 = i5;
                                    jArr2 = jArr3;
                                    objArr2 = objArr3;
                                    boolean z3 = z2;
                                    if (new androidx.compose.ui.geometry.Rect(intRect.f11017a, intRect.f11018b, intRect.f11019c, intRect.d).a(j2) && (scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNodeWithAdjustedBounds.f10325a.d, semanticsPropertyKey)) != null) {
                                        boolean z4 = scrollAxisRange.f10300c;
                                        int i8 = z4 ? -i2 : i2;
                                        if (i2 == 0 && z4) {
                                            i8 = -1;
                                        }
                                        Function0 function0 = scrollAxisRange.f10298a;
                                        if (i8 >= 0 ? ((Number) function0.mo47invoke()).floatValue() >= ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() : ((Number) function0.mo47invoke()).floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            z2 = z3;
                                        } else {
                                            z2 = true;
                                        }
                                    } else {
                                        z2 = z3;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    objArr2 = objArr3;
                                    i3 = i5;
                                }
                                j3 >>= i3;
                                i7++;
                                i5 = i3;
                                jArr3 = jArr2;
                                objArr3 = objArr2;
                            }
                            jArr = jArr3;
                            objArr = objArr3;
                            boolean z5 = z2;
                            if (i6 != i5) {
                                return z5;
                            }
                            z2 = z5;
                        } else {
                            jArr = jArr3;
                            objArr = objArr3;
                        }
                        if (i4 == length) {
                            return z2;
                        }
                        i4++;
                        jArr3 = jArr;
                        objArr3 = objArr;
                    }
                }
            }
        }
        return false;
    }

    public final void n() {
        Trace.beginSection("sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (v()) {
                B(this.f9899e.getSemanticsOwner().a(), this.I);
            }
            Trace.endSection();
            Trace.beginSection("sendSemanticsPropertyChangeEvents");
            try {
                H(s());
                Trace.endSection();
                Trace.beginSection("updateSemanticsNodesCopyAndPanes");
                try {
                    Q();
                } finally {
                    Trace.endSection();
                }
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public final AccessibilityEvent o(int i2, int i3) {
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i3);
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName("android.view.View");
        AndroidComposeView androidComposeView = this.f9899e;
        accessibilityEventObtain.setPackageName(androidComposeView.getContext().getPackageName());
        accessibilityEventObtain.setSource(androidComposeView, i2);
        if (v() && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i2)) != null) {
            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds.f10325a;
            accessibilityEventObtain.setPassword(semanticsNode.d.f10312b.c(SemanticsProperties.L));
            AccessibilityEventCompat.a(accessibilityEventObtain, Intrinsics.c(SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.o), Boolean.TRUE));
        }
        return accessibilityEventObtain;
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this.f9903j = null;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        this.f9903j = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.f9901h;
        if (accessibilityManager.isEnabled()) {
            this.f9903j = null;
        }
        accessibilityManager.addAccessibilityStateChangeListener(this);
        accessibilityManager.addTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.f9899e.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.L);
        android.view.accessibility.AccessibilityManager accessibilityManager = this.f9901h;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        accessibilityManager.removeTouchExplorationStateChangeListener(this);
    }

    public final AccessibilityEvent p(int i2, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent accessibilityEventO = o(i2, 8192);
        if (num != null) {
            accessibilityEventO.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            accessibilityEventO.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            accessibilityEventO.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            accessibilityEventO.getText().add(charSequence);
        }
        return accessibilityEventO;
    }

    public final int q(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        if (!semanticsConfiguration.f10312b.c(SemanticsProperties.f10331a)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.H;
            if (semanticsConfiguration.f10312b.c(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.f(semanticsPropertyKey)).f10566a & BodyPartID.bodyIdMax);
            }
        }
        return this.u;
    }

    public final int r(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        if (!semanticsConfiguration.f10312b.c(SemanticsProperties.f10331a)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.H;
            if (semanticsConfiguration.f10312b.c(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.f(semanticsPropertyKey)).f10566a >> 32);
            }
        }
        return this.u;
    }

    public final IntObjectMap s() {
        if (this.y) {
            this.y = false;
            AndroidComposeView androidComposeView = this.f9899e;
            this.A = SemanticsOwnerKt.a(androidComposeView.getSemanticsOwner(), AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1.f9915c);
            if (v()) {
                final MutableIntObjectMap mutableIntObjectMap = this.A;
                final Resources resources = androidComposeView.getContext().getResources();
                MutableIntIntMap mutableIntIntMap = this.C;
                mutableIntIntMap.c();
                MutableIntIntMap mutableIntIntMap2 = this.D;
                mutableIntIntMap2.c();
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) mutableIntObjectMap.b(-1);
                SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.f10325a : null;
                semanticsNode.getClass();
                ArrayList arrayListB = SemanticsSortKt.b(semanticsNode, new Function1<SemanticsNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(mutableIntObjectMap.a(((SemanticsNode) obj).f10322f));
                    }
                }, new Function1<SemanticsNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b((SemanticsNode) obj, resources));
                    }
                }, CollectionsKt.O(semanticsNode));
                int i2 = 1;
                int size = arrayListB.size() - 1;
                if (1 <= size) {
                    while (true) {
                        int i3 = ((SemanticsNode) arrayListB.get(i2 - 1)).f10322f;
                        int i4 = ((SemanticsNode) arrayListB.get(i2)).f10322f;
                        mutableIntIntMap.f(i3, i4);
                        mutableIntIntMap2.f(i4, i3);
                        if (i2 == size) {
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        return this.A;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0073 A[LOOP:0: B:4:0x0014->B:36:0x0073, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x0076 A[EDGE_INSN: B:49:0x0076->B:37:0x0076 BREAK  A[LOOP:0: B:4:0x0014->B:36:0x0073], SYNTHETIC] */
    public final androidx.compose.ui.geometry.Rect u(SemanticsNode semanticsNode, Rect rect, Shape shape) {
        Modifier.Node f8608b;
        AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 = new AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1(shape);
        LayoutNode layoutNode = semanticsNode.f10320c;
        Modifier.Node node = layoutNode.H.f9774f;
        Object obj = null;
        if ((node.f8610e & 8) != 0) {
            loop0: while (node != null) {
                if ((node.d & 8) == 0) {
                    if ((node.f8610e & 8) != 0) {
                        break;
                        break;
                    }
                    node = node.g;
                } else {
                    Modifier.Node nodeB = node;
                    MutableVector mutableVector = null;
                    while (nodeB != null) {
                        if (nodeB instanceof SemanticsModifierNode) {
                            ((SemanticsModifierNode) nodeB).L1(androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1);
                            if (androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1.f9916b) {
                                obj = nodeB;
                                break loop0;
                            }
                        } else if ((nodeB.d & 8) != 0 && (nodeB instanceof DelegatingNode)) {
                            int i2 = 0;
                            for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                if ((node2.d & 8) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        nodeB = node2;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (nodeB != null) {
                                            mutableVector.b(nodeB);
                                            nodeB = null;
                                        }
                                        mutableVector.b(node2);
                                    }
                                }
                            }
                            if (i2 == 1) {
                            }
                        }
                        nodeB = DelegatableNodeKt.b(mutableVector);
                    }
                    if ((node.f8610e & 8) != 0) {
                        break;
                    }
                    node = node.g;
                }
            }
        }
        SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) obj;
        if (semanticsModifierNode == null || (f8608b = semanticsModifierNode.getF8608b()) == null || !f8608b.o) {
            return LayoutCoordinatesKt.b(layoutNode.H.d, false);
        }
        NodeCoordinator nodeCoordinatorE = DelegatableNodeKt.e(semanticsModifierNode);
        androidx.compose.ui.geometry.Rect rectL = LayoutCoordinatesKt.c(nodeCoordinatorE).L(nodeCoordinatorE, false);
        Rect rectM = M(rectL.f8811a, rectL.f8812b, rectL.f8813c, rectL.d);
        float f2 = rectM.left - rect.left;
        float f3 = rectM.top - rect.top;
        return new androidx.compose.ui.geometry.Rect(f2, f3, rectM.width() + f2, rectM.height() + f3);
    }

    public final boolean v() {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.f9901h;
        if (!accessibilityManager.isEnabled()) {
            return false;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f9903j;
        if (enabledAccessibilityServiceList == null) {
            enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(-1);
            this.f9903j = enabledAccessibilityServiceList;
        }
        return !enabledAccessibilityServiceList.isEmpty();
    }

    public final void w(LayoutNode layoutNode) {
        if (this.w.add(layoutNode)) {
            this.x.b(Unit.f71739a);
        }
    }
}
