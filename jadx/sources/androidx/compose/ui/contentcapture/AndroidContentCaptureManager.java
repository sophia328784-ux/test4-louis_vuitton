package androidx.compose.ui.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.translation.TranslationRequestValue;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.platform.coreshims.ViewStructureCompat;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\n\u000b\fB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroidx/compose/ui/platform/AndroidComposeView;", "view", "Lkotlin/Function0;", "Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", "onContentCaptureSession", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function0;)V", "TranslateStatus", "ViewTranslationHelperMethods", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidContentCaptureManager implements DefaultLifecycleObserver, View.OnAttachStateChangeListener {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AndroidComposeView f8661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f8662c;
    public ContentCaptureSessionWrapper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f8663e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f8664f = 100;
    public TranslateStatus g = TranslateStatus.SHOW_ORIGINAL;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f8665h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedChannel f8666i = ChannelKt.a(1, 6, null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MutableIntObjectMap f8667j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f8668k;
    public final MutableIntObjectMap l;
    public SemanticsNodeCopy m;
    public boolean n;
    public final a o;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$Companion;", "", "", "VIEW_STRUCTURE_BUNDLE_KEY_TIMESTAMP", "Ljava/lang/String;", "VIEW_STRUCTURE_BUNDLE_KEY_ADDITIONAL_INDEX", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;", "", "SHOW_ORIGINAL", "SHOW_TRANSLATED", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TranslateStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TranslateStatus[] $VALUES;
        public static final TranslateStatus SHOW_ORIGINAL;
        public static final TranslateStatus SHOW_TRANSLATED;

        static {
            TranslateStatus translateStatus = new TranslateStatus("SHOW_ORIGINAL", 0);
            SHOW_ORIGINAL = translateStatus;
            TranslateStatus translateStatus2 = new TranslateStatus("SHOW_TRANSLATED", 1);
            SHOW_TRANSLATED = translateStatus2;
            TranslateStatus[] translateStatusArr = {translateStatus, translateStatus2};
            $VALUES = translateStatusArr;
            $ENTRIES = EnumEntriesKt.a(translateStatusArr);
        }

        public static TranslateStatus valueOf(String str) {
            return (TranslateStatus) Enum.valueOf(TranslateStatus.class, str);
        }

        public static TranslateStatus[] values() {
            return (TranslateStatus[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewTranslationHelperMethods {
        public static void a(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
            TranslationResponseValue value;
            CharSequence text;
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
            SemanticsNode semanticsNode;
            AccessibilityAction accessibilityAction;
            Function1 function1;
            int size = longSparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                long jKeyAt = longSparseArray.keyAt(i2);
                ViewTranslationResponse viewTranslationResponse = (ViewTranslationResponse) longSparseArray.get(jKeyAt);
                if (viewTranslationResponse != null && (value = viewTranslationResponse.getValue("android:text")) != null && (text = value.getText()) != null && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.d().b((int) jKeyAt)) != null && (semanticsNode = semanticsNodeWithAdjustedBounds.f10325a) != null && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.d, SemanticsActions.l)) != null && (function1 = (Function1) accessibilityAction.f10270b) != null) {
                }
            }
        }

        public static void b(AndroidContentCaptureManager androidContentCaptureManager, long[] jArr, Consumer consumer) {
            SemanticsNode semanticsNode;
            for (long j2 : jArr) {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.d().b((int) j2);
                if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.f10325a) != null) {
                    ViewTranslationRequest.Builder builder = new ViewTranslationRequest.Builder(androidContentCaptureManager.f8661b.getAutofillId(), semanticsNode.f10322f);
                    List list = (List) SemanticsConfigurationKt.a(semanticsNode.d, SemanticsProperties.C);
                    if (list != null) {
                        builder.setValue("android:text", TranslationRequestValue.forText(new AnnotatedString(ListUtilsKt.a(list, "\n", null, 62), null, 2, null)));
                        consumer.accept(builder.build());
                    }
                }
            }
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8669a;

        static {
            int[] iArr = new int[ContentCaptureEventType.values().length];
            try {
                iArr[ContentCaptureEventType.VIEW_APPEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContentCaptureEventType.VIEW_DISAPPEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f8669a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.ui.contentcapture.a] */
    public AndroidContentCaptureManager(AndroidComposeView androidComposeView, Function0<? extends ContentCaptureSessionWrapper> function0) {
        this.f8661b = androidComposeView;
        this.f8662c = function0;
        new Handler(Looper.getMainLooper());
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.f3262a;
        mutableIntObjectMap.getClass();
        this.f8667j = mutableIntObjectMap;
        this.l = IntObjectMapKt.a();
        this.m = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().a(), mutableIntObjectMap);
        this.o = new Runnable() { // from class: androidx.compose.ui.contentcapture.a
            /* JADX WARN: Code duplicated, block: B:18:0x0073  */
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                int i3 = AndroidContentCaptureManager.p;
                AndroidContentCaptureManager androidContentCaptureManager = this.f8679b;
                boolean zE = androidContentCaptureManager.e();
                AndroidComposeView androidComposeView2 = androidContentCaptureManager.f8661b;
                if (zE) {
                    Trace.beginSection("ContentCapture:changeChecker");
                    try {
                        androidComposeView2.c(true);
                        MutableIntObjectMap mutableIntObjectMap2 = androidContentCaptureManager.l;
                        int[] iArr = mutableIntObjectMap2.f3259b;
                        long[] jArr = mutableIntObjectMap2.f3258a;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i4 = 0;
                            while (true) {
                                long j2 = jArr[i4];
                                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                                    int i6 = 0;
                                    while (i6 < i5) {
                                        if ((255 & j2) < 128) {
                                            int i7 = iArr[(i4 << 3) + i6];
                                            if (!androidContentCaptureManager.d().a(i7)) {
                                                androidContentCaptureManager.f8663e.add(new ContentCaptureEvent(i7, androidContentCaptureManager.f8668k, ContentCaptureEventType.VIEW_DISAPPEAR, null));
                                                androidContentCaptureManager.f8666i.b(Unit.f71739a);
                                            }
                                        }
                                        j2 >>= 8;
                                        i6++;
                                        i4 = i4;
                                    }
                                    int i8 = i4;
                                    if (i5 != 8) {
                                        break;
                                    } else {
                                        i2 = i8;
                                    }
                                } else {
                                    i2 = i4;
                                }
                                if (i2 == length) {
                                    break;
                                } else {
                                    i4 = i2 + 1;
                                }
                            }
                        }
                        Trace.beginSection("ContentCapture:sendAppearEvents");
                        try {
                            androidContentCaptureManager.l(androidComposeView2.getSemanticsOwner().a(), androidContentCaptureManager.m);
                            Trace.endSection();
                            androidContentCaptureManager.b(androidContentCaptureManager.d());
                            androidContentCaptureManager.o();
                            androidContentCaptureManager.n = false;
                        } finally {
                            Trace.endSection();
                        }
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
        };
    }

    public static void k(final AndroidContentCaptureManager androidContentCaptureManager, final LongSparseArray longSparseArray) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (Intrinsics.c(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            ViewTranslationHelperMethods.a(androidContentCaptureManager, longSparseArray);
        } else {
            androidContentCaptureManager.f8661b.post(new Runnable() { // from class: androidx.compose.ui.contentcapture.b
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidContentCaptureManager.ViewTranslationHelperMethods.a(this.f8680b, longSparseArray);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Code duplicated, block: B:26:0x0062  */
    /* JADX WARN: Code duplicated, block: B:29:0x006f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:34:0x0085  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r8.f8664f, r0) == r1) goto L33;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0082 -> B:13:0x002b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = (androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1) r0
            int r1 = r0.f8672e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8672e = r1
            goto L18
        L13:
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = new androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f8671c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f8672e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2d
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f8670b
            kotlin.ResultKt.b(r9)
        L2b:
            r9 = r2
            goto L43
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L34:
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f8670b
            kotlin.ResultKt.b(r9)
            goto L51
        L3a:
            kotlin.ResultKt.b(r9)
            kotlinx.coroutines.channels.BufferedChannel r9 = r8.f8666i
            kotlinx.coroutines.channels.ChannelIterator r9 = r9.iterator()
        L43:
            r0.f8670b = r9
            r0.f8672e = r4
            java.lang.Object r2 = r9.a(r0)
            if (r2 != r1) goto L4e
            goto L84
        L4e:
            r7 = r2
            r2 = r9
            r9 = r7
        L51:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L85
            r2.next()
            boolean r9 = r8.e()
            if (r9 == 0) goto L65
            r8.f()
        L65:
            androidx.compose.ui.platform.AndroidComposeView r9 = r8.f8661b
            android.os.Handler r9 = r9.getHandler()
            boolean r5 = r8.n
            if (r5 != 0) goto L78
            if (r9 == 0) goto L78
            r8.n = r4
            androidx.compose.ui.contentcapture.a r5 = r8.o
            r9.post(r5)
        L78:
            r0.f8670b = r2
            r0.f8672e = r3
            long r5 = r8.f8664f
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r5, r0)
            if (r9 != r1) goto L2b
        L84:
            return r1
        L85:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void b(IntObjectMap intObjectMap) {
        int[] iArr;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        long j2;
        char c2;
        long j3;
        int i2;
        int i3;
        long[] jArr3;
        SemanticsNodeCopy semanticsNodeCopy;
        int i4;
        String str;
        long j4;
        String str2;
        IntObjectMap intObjectMap2 = intObjectMap;
        int[] iArr3 = intObjectMap2.f3259b;
        long[] jArr4 = intObjectMap2.f3258a;
        int length = jArr4.length - 2;
        if (length < 0) {
            return;
        }
        int i5 = 0;
        while (true) {
            long j5 = jArr4[i5];
            char c3 = 7;
            long j6 = -9187201950435737472L;
            if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i6 = 8;
                int i7 = 8 - ((~(i5 - length)) >>> 31);
                int i8 = 0;
                while (i8 < i7) {
                    if ((j5 & 255) < 128) {
                        int i9 = iArr3[(i5 << 3) + i8];
                        c2 = c3;
                        SemanticsNodeCopy semanticsNodeCopy2 = (SemanticsNodeCopy) this.l.b(i9);
                        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) intObjectMap2.b(i9);
                        SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.f10325a : null;
                        if (semanticsNode == null) {
                            throw defpackage.a.s("no value for specified key");
                        }
                        j3 = j6;
                        int i10 = semanticsNode.f10322f;
                        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
                        String str3 = "Invalid content capture ID";
                        if (semanticsNodeCopy2 != null) {
                            iArr2 = iArr3;
                            jArr2 = jArr4;
                            j2 = j5;
                            i2 = i8;
                            MutableScatterMap mutableScatterMap = semanticsConfiguration.f10312b;
                            Object[] objArr = mutableScatterMap.f3362b;
                            long[] jArr5 = mutableScatterMap.f3361a;
                            int length2 = jArr5.length - 2;
                            if (length2 >= 0) {
                                int i11 = 0;
                                while (true) {
                                    long j7 = jArr5[i11];
                                    long[] jArr6 = jArr5;
                                    Object[] objArr2 = objArr;
                                    if ((((~j7) << c2) & j7 & j3) != j3) {
                                        int i12 = 8 - ((~(i11 - length2)) >>> 31);
                                        int i13 = 0;
                                        while (i13 < i12) {
                                            if ((j7 & 255) < 128) {
                                                SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) objArr2[(i11 << 3) + i13];
                                                i4 = i13;
                                                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.C;
                                                if (Intrinsics.c(semanticsPropertyKey, semanticsPropertyKey2)) {
                                                    List list = (List) SemanticsConfigurationKt.a(semanticsNodeCopy2.f10150a, semanticsPropertyKey2);
                                                    AnnotatedString annotatedString = list != null ? (AnnotatedString) CollectionsKt.firstOrNull(list) : null;
                                                    List list2 = (List) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey2);
                                                    AnnotatedString annotatedString2 = list2 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list2) : null;
                                                    if (!Intrinsics.c(annotatedString, annotatedString2)) {
                                                        String strValueOf = String.valueOf(annotatedString2);
                                                        ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.d;
                                                        if (contentCaptureSessionWrapper != null) {
                                                            AutofillId autofillIdE = contentCaptureSessionWrapper.e(i10);
                                                            if (autofillIdE == null) {
                                                                throw defpackage.a.s("Invalid content capture ID");
                                                            }
                                                            contentCaptureSessionWrapper.c(autofillIdE, strValueOf);
                                                        }
                                                    }
                                                }
                                                j7 >>= 8;
                                                i13 = i4 + 1;
                                                semanticsNodeCopy2 = semanticsNodeCopy2;
                                                jArr6 = jArr6;
                                            } else {
                                                i4 = i13;
                                            }
                                            j7 >>= 8;
                                            i13 = i4 + 1;
                                            semanticsNodeCopy2 = semanticsNodeCopy2;
                                            jArr6 = jArr6;
                                        }
                                        jArr3 = jArr6;
                                        semanticsNodeCopy = semanticsNodeCopy2;
                                        if (i12 != 8) {
                                            break;
                                        }
                                    } else {
                                        jArr3 = jArr6;
                                        semanticsNodeCopy = semanticsNodeCopy2;
                                    }
                                    if (i11 == length2) {
                                        break;
                                    }
                                    i11++;
                                    objArr = objArr2;
                                    semanticsNodeCopy2 = semanticsNodeCopy;
                                    jArr5 = jArr3;
                                }
                            }
                        } else {
                            MutableScatterMap mutableScatterMap2 = semanticsConfiguration.f10312b;
                            Object[] objArr3 = mutableScatterMap2.f3362b;
                            long[] jArr7 = mutableScatterMap2.f3361a;
                            int i14 = i6;
                            int length3 = jArr7.length - 2;
                            iArr2 = iArr3;
                            jArr2 = jArr4;
                            if (length3 >= 0) {
                                int i15 = 0;
                                while (true) {
                                    long j8 = jArr7[i15];
                                    j2 = j5;
                                    if ((((~j8) << c2) & j8 & j3) != j3) {
                                        int i16 = 8 - ((~(i15 - length3)) >>> 31);
                                        int i17 = 0;
                                        while (i17 < i16) {
                                            if ((j8 & 255) < 128) {
                                                j4 = j8;
                                                SemanticsPropertyKey semanticsPropertyKey3 = (SemanticsPropertyKey) objArr3[(i15 << 3) + i17];
                                                SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.C;
                                                if (Intrinsics.c(semanticsPropertyKey3, semanticsPropertyKey4)) {
                                                    List list3 = (List) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey4);
                                                    String strValueOf2 = String.valueOf(list3 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list3) : null);
                                                    ContentCaptureSessionWrapper contentCaptureSessionWrapper2 = this.d;
                                                    if (contentCaptureSessionWrapper2 != null) {
                                                        str2 = str3;
                                                        AutofillId autofillIdE2 = contentCaptureSessionWrapper2.e(i10);
                                                        if (autofillIdE2 == null) {
                                                            throw defpackage.a.s(str2);
                                                        }
                                                        contentCaptureSessionWrapper2.c(autofillIdE2, strValueOf2);
                                                    }
                                                }
                                                j8 = j4 >> i14;
                                                i17++;
                                                i8 = i8;
                                                str3 = str2;
                                            } else {
                                                j4 = j8;
                                            }
                                            str2 = str3;
                                            j8 = j4 >> i14;
                                            i17++;
                                            i8 = i8;
                                            str3 = str2;
                                        }
                                        str = str3;
                                        i2 = i8;
                                        if (i16 != i14) {
                                            break;
                                        }
                                    } else {
                                        str = str3;
                                        i2 = i8;
                                    }
                                    if (i15 == length3) {
                                        break;
                                    }
                                    i15++;
                                    j5 = j2;
                                    i8 = i2;
                                    str3 = str;
                                    i14 = 8;
                                }
                            } else {
                                j2 = j5;
                                i2 = i8;
                            }
                        }
                        i3 = 8;
                    } else {
                        iArr2 = iArr3;
                        jArr2 = jArr4;
                        j2 = j5;
                        c2 = c3;
                        j3 = j6;
                        i2 = i8;
                        i3 = i6;
                    }
                    j5 = j2 >> i3;
                    i8 = i2 + 1;
                    intObjectMap2 = intObjectMap;
                    i6 = i3;
                    c3 = c2;
                    j6 = j3;
                    iArr3 = iArr2;
                    jArr4 = jArr2;
                }
                iArr = iArr3;
                jArr = jArr4;
                if (i7 != i6) {
                    return;
                }
            } else {
                iArr = iArr3;
                jArr = jArr4;
            }
            if (i5 == length) {
                return;
            }
            i5++;
            intObjectMap2 = intObjectMap;
            iArr3 = iArr;
            jArr4 = jArr;
        }
    }

    public final void c(SemanticsNode semanticsNode, Function2 function2) {
        semanticsNode.getClass();
        List listJ = SemanticsNode.j(4, semanticsNode);
        int size = listJ.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = listJ.get(i3);
            if (d().a(((SemanticsNode) obj).f10322f)) {
                function2.invoke(Integer.valueOf(i2), obj);
                i2++;
            }
        }
    }

    public final IntObjectMap d() {
        if (this.f8665h) {
            this.f8665h = false;
            this.f8667j = SemanticsOwnerKt.a(this.f8661b.getSemanticsOwner(), AndroidContentCaptureManager$currentSemanticsNodes$1.f8673c);
            this.f8668k = System.currentTimeMillis();
        }
        return this.f8667j;
    }

    public final boolean e() {
        return this.d != null;
    }

    public final void f() {
        ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.d;
        if (contentCaptureSessionWrapper == null) {
            return;
        }
        ArrayList arrayList = this.f8663e;
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) arrayList.get(i2);
            int i3 = WhenMappings.f8669a[contentCaptureEvent.f8678c.ordinal()];
            if (i3 == 1) {
                ViewStructureCompat viewStructureCompat = contentCaptureEvent.d;
                if (viewStructureCompat != null) {
                    contentCaptureSessionWrapper.d(viewStructureCompat.f10228a);
                }
            } else if (i3 != 2) {
                v40.g();
                return;
            } else {
                AutofillId autofillIdE = contentCaptureSessionWrapper.e(contentCaptureEvent.f8676a);
                if (autofillIdE != null) {
                    contentCaptureSessionWrapper.b(autofillIdE);
                }
            }
        }
        contentCaptureSessionWrapper.flush();
        arrayList.clear();
    }

    public final void g() {
        AccessibilityAction accessibilityAction;
        Function0 function0;
        this.g = TranslateStatus.SHOW_ORIGINAL;
        IntObjectMap intObjectMapD = d();
        Object[] objArr = intObjectMapD.f3260c;
        long[] jArr = intObjectMapD.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        SemanticsConfiguration semanticsConfiguration = ((SemanticsNodeWithAdjustedBounds) objArr[(i2 << 3) + i4]).f10325a.d;
                        if (SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.E) != null && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.n)) != null && (function0 = (Function0) accessibilityAction.f10270b) != null) {
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void h(long[] jArr, Consumer consumer) {
        ViewTranslationHelperMethods.b(this, jArr, consumer);
    }

    public final void i() {
        AccessibilityAction accessibilityAction;
        Function1 function1;
        this.g = TranslateStatus.SHOW_ORIGINAL;
        IntObjectMap intObjectMapD = d();
        Object[] objArr = intObjectMapD.f3260c;
        long[] jArr = intObjectMapD.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        SemanticsConfiguration semanticsConfiguration = ((SemanticsNodeWithAdjustedBounds) objArr[(i2 << 3) + i4]).f10325a.d;
                        if (Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.E), Boolean.TRUE) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.m)) != null && (function1 = (Function1) accessibilityAction.f10270b) != null) {
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void j() {
        AccessibilityAction accessibilityAction;
        Function1 function1;
        this.g = TranslateStatus.SHOW_TRANSLATED;
        IntObjectMap intObjectMapD = d();
        Object[] objArr = intObjectMapD.f3260c;
        long[] jArr = intObjectMapD.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        SemanticsConfiguration semanticsConfiguration = ((SemanticsNodeWithAdjustedBounds) objArr[(i2 << 3) + i4]).f10325a.d;
                        if (Intrinsics.c(SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.E), Boolean.FALSE) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.m)) != null && (function1 = (Function1) accessibilityAction.f10270b) != null) {
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void l(SemanticsNode semanticsNode, final SemanticsNodeCopy semanticsNodeCopy) {
        c(semanticsNode, new Function2<Integer, SemanticsNode, Unit>() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$sendContentCaptureAppearEvents$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int iIntValue = ((Number) obj).intValue();
                SemanticsNode semanticsNode2 = (SemanticsNode) obj2;
                if (!semanticsNodeCopy.f10151b.a(semanticsNode2.f10322f)) {
                    int i2 = AndroidContentCaptureManager.p;
                    AndroidContentCaptureManager androidContentCaptureManager = this;
                    androidContentCaptureManager.m(iIntValue, semanticsNode2);
                    androidContentCaptureManager.f8666i.b(Unit.f71739a);
                }
                return Unit.f71739a;
            }
        });
        List listJ = SemanticsNode.j(4, semanticsNode);
        int size = listJ.size();
        for (int i2 = 0; i2 < size; i2++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listJ.get(i2);
            IntObjectMap intObjectMapD = d();
            int i3 = semanticsNode2.f10322f;
            if (intObjectMapD.a(i3)) {
                MutableIntObjectMap mutableIntObjectMap = this.l;
                if (mutableIntObjectMap.a(i3)) {
                    Object objB = mutableIntObjectMap.b(i3);
                    if (objB == null) {
                        throw defpackage.a.s("node not present in pruned tree before this change");
                    }
                    l(semanticsNode2, (SemanticsNodeCopy) objB);
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:67:0x014c  */
    public final void m(int i2, SemanticsNode semanticsNode) {
        AccessibilityAction accessibilityAction;
        Function1 function1;
        Rect rectA;
        ViewStructureCompat viewStructureCompat;
        String strD;
        Function1 function2;
        if (e()) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            Boolean bool = (Boolean) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.E);
            if (this.g == TranslateStatus.SHOW_ORIGINAL && Intrinsics.c(bool, Boolean.TRUE)) {
                AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.m);
                if (accessibilityAction2 != null && (function2 = (Function1) accessibilityAction2.f10270b) != null) {
                }
            } else if (this.g == TranslateStatus.SHOW_TRANSLATED && Intrinsics.c(bool, Boolean.FALSE) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.m)) != null && (function1 = (Function1) accessibilityAction.f10270b) != null) {
            }
            int i3 = semanticsNode.f10322f;
            ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.d;
            if (contentCaptureSessionWrapper == null) {
                viewStructureCompat = null;
            } else {
                AutofillId autofillId = this.f8661b.getAutofillId();
                SemanticsNode semanticsNodeL = semanticsNode.l();
                int i4 = semanticsNode.f10322f;
                if (semanticsNodeL == null || (autofillId = contentCaptureSessionWrapper.e(semanticsNodeL.f10322f)) != null) {
                    ViewStructureCompat viewStructureCompatA = contentCaptureSessionWrapper.a(autofillId, i4);
                    ViewStructure viewStructure = viewStructureCompatA.f10228a;
                    SemanticsConfiguration semanticsConfiguration2 = semanticsNode.d;
                    if (semanticsConfiguration2.f10312b.c(SemanticsProperties.L)) {
                        viewStructureCompat = null;
                    } else {
                        Bundle extras = viewStructure.getExtras();
                        if (extras != null) {
                            extras.putLong("android.view.contentcapture.EventTimestamp", this.f8668k);
                            extras.putInt("android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX", i2);
                        }
                        String str = (String) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.A);
                        if (str != null) {
                            viewStructure.setId(i4, null, null, str);
                        }
                        if (((Boolean) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.n)) != null) {
                            viewStructure.setClassName("android.widget.ViewGroup");
                        }
                        List list = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.C);
                        if (list != null) {
                            viewStructure.setClassName("android.widget.TextView");
                            viewStructure.setText(ListUtilsKt.a(list, "\n", null, 62));
                        }
                        AnnotatedString annotatedString = (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.G);
                        if (annotatedString != null) {
                            viewStructure.setClassName("android.widget.EditText");
                            viewStructure.setText(annotatedString);
                        }
                        List list2 = (List) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.f10331a);
                        if (list2 != null) {
                            viewStructure.setContentDescription(ListUtilsKt.a(list2, "\n", null, 62));
                        }
                        Role role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration2, SemanticsProperties.z);
                        if (role != null && (strD = SemanticsUtils_androidKt.d(role.f10296a)) != null) {
                            viewStructure.setClassName(strD);
                        }
                        TextLayoutResult textLayoutResultB = SemanticsUtils_androidKt.b(semanticsConfiguration2);
                        if (textLayoutResultB != null) {
                            TextLayoutInput textLayoutInput = textLayoutResultB.f10552a;
                            TextStyle textStyle = textLayoutInput.f10544b;
                            Density density = textLayoutInput.g;
                            viewStructure.setTextStyle(density.getF11003c() * density.getF11002b() * TextUnit.c(textStyle.f10568a.fontSize), 0, 0, 0);
                        }
                        NodeCoordinator nodeCoordinatorD = semanticsNode.d();
                        if (nodeCoordinatorD == null) {
                            Rect.f8809e.getClass();
                            rectA = Rect.f8810f;
                        } else {
                            NodeCoordinator nodeCoordinator = nodeCoordinatorD.p1().o ? nodeCoordinatorD : null;
                            if (nodeCoordinator != null) {
                                rectA = semanticsNode.a(nodeCoordinator);
                            } else {
                                Rect.f8809e.getClass();
                                rectA = Rect.f8810f;
                            }
                        }
                        float f2 = rectA.f8811a;
                        float f3 = rectA.f8812b;
                        viewStructure.setDimens((int) f2, (int) f3, 0, 0, (int) (rectA.f8813c - f2), (int) (rectA.d - f3));
                        viewStructureCompat = viewStructureCompatA;
                    }
                } else {
                    viewStructureCompat = null;
                }
            }
            if (viewStructureCompat != null) {
                this.f8663e.add(new ContentCaptureEvent(i3, this.f8668k, ContentCaptureEventType.VIEW_APPEAR, viewStructureCompat));
            }
            c(semanticsNode, new Function2<Integer, SemanticsNode, Unit>() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$updateBuffersOnAppeared$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i5 = AndroidContentCaptureManager.p;
                    this.f8675c.m(((Number) obj).intValue(), (SemanticsNode) obj2);
                    return Unit.f71739a;
                }
            });
        }
    }

    public final void n(SemanticsNode semanticsNode) {
        if (e()) {
            this.f8663e.add(new ContentCaptureEvent(semanticsNode.f10322f, this.f8668k, ContentCaptureEventType.VIEW_DISAPPEAR, null));
            List listJ = SemanticsNode.j(4, semanticsNode);
            int size = listJ.size();
            for (int i2 = 0; i2 < size; i2++) {
                n((SemanticsNode) listJ.get(i2));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x005b A[LOOP:0: B:5:0x0017->B:15:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x005e A[EDGE_INSN: B:19:0x005e->B:16:0x005e BREAK  A[LOOP:0: B:5:0x0017->B:15:0x005b], SYNTHETIC] */
    public final void o() {
        MutableIntObjectMap mutableIntObjectMap = this.l;
        mutableIntObjectMap.c();
        IntObjectMap intObjectMapD = d();
        int[] iArr = intObjectMapD.f3259b;
        Object[] objArr = intObjectMapD.f3260c;
        long[] jArr = intObjectMapD.f3258a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            int i5 = (i2 << 3) + i4;
                            mutableIntObjectMap.i(iArr[i5], new SemanticsNodeCopy(((SemanticsNodeWithAdjustedBounds) objArr[i5]).f10325a, d()));
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    } else if (i2 != length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.m = new SemanticsNodeCopy(this.f8661b.getSemanticsOwner().a(), d());
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.d = (ContentCaptureSessionWrapper) this.f8662c.mo47invoke();
        m(-1, this.f8661b.getSemanticsOwner().a());
        f();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        n(this.f8661b.getSemanticsOwner().a());
        f();
        this.d = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.f8661b.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.o);
        this.d = null;
    }
}
