package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.autofill.PlatformAutofillManager;
import androidx.compose.ui.autofill.PlatformAutofillManagerImpl;
import androidx.compose.ui.autofill.PopulateViewStructure_androidKt;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.draganddrop.AndroidDragAndDropManager;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwner$dispatchKeyEvent$1;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusOwnerImplKt;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.focus.PlatformFocusOwner;
import androidx.compose.ui.focus.TwoDimensionalFocusSearchKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidGraphicsContext_androidKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.AndroidPointerIcon;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.InsetsListener;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RectRulers;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.WindowInsetsRulerProvider;
import androidx.compose.ui.layout.WindowInsetsRulers;
import androidx.compose.ui.layout.WindowInsetsRulers_androidKt;
import androidx.compose.ui.layout.WindowWindowInsetsAnimationValues;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$3;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DepthSortedSetsForDifferentPasses;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OnPositionedDispatcher;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView.RootModifierNode;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.EmptySemanticsModifier;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.ExecuteDelayed;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.InputEventCallback2;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper_androidKt;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.RecordingInputConnection;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import com.dynatrace.agent.compose.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.compose.userinteraction.sensor.UserInteractionsApi;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import defpackage.e5;
import defpackage.j00;
import defpackage.ll0;
import defpackage.md;
import defpackage.n5;
import defpackage.os;
import defpackage.r3;
import defpackage.r81;
import defpackage.v40;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Ð\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f:\u0006ß\u0002à\u0002á\u0002B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010$\u001a\u00020\u001b2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001b0\"¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010&\u001a\u00020\u0013¢\u0006\u0004\b(\u0010)R+\u00101\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000f8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R*\u0010;\u001a\u0004\u0018\u0001028\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b3\u00104\u0012\u0004\b9\u0010:\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010A\u001a\u00020<8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R$\u0010I\u001a\u0004\u0018\u00010B8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR$\u0010P\u001a\u00020J2\u0006\u0010K\u001a\u00020J8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR+\u0010W\u001a\u00020Q2\u0006\u0010*\u001a\u00020Q8V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\bR\u0010,\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001a\u0010]\u001a\u00020X8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\"\u0010e\u001a\u00020^8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001a\u0010k\u001a\u00020f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bg\u0010h\u001a\u0004\bi\u0010jR+\u0010n\u001a\u00020l2\u0006\u0010*\u001a\u00020l8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bm\u0010,\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u001b\u0010u\u001a\u00020l8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010oR\u001a\u0010{\u001a\u00020v8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010zR\u0019\u0010\u0081\u0001\u001a\u00020|8\u0006¢\u0006\r\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001R'\u0010\u0088\u0001\u001a\u00030\u0082\u00018\u0016X\u0096\u0004¢\u0006\u0017\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u0012\u0005\b\u0087\u0001\u0010:\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R'\u0010\u008e\u0001\u001a\n\u0012\u0005\u0012\u00030\u0082\u00010\u0089\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R \u0010\u0094\u0001\u001a\u00030\u008f\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R*\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0005\b\u0099\u0001\u0010!R \u0010 \u0001\u001a\u00030\u009b\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R*\u0010¨\u0001\u001a\u00030¡\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001R \u0010®\u0001\u001a\u00030©\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bª\u0001\u0010«\u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001R \u0010´\u0001\u001a\u00030¯\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b°\u0001\u0010±\u0001\u001a\u0006\b²\u0001\u0010³\u0001R \u0010º\u0001\u001a\u00030µ\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b¶\u0001\u0010·\u0001\u001a\u0006\b¸\u0001\u0010¹\u0001R3\u0010Á\u0001\u001a\u00030»\u00012\u0007\u0010*\u001a\u00030»\u00018F@FX\u0086\u008e\u0002¢\u0006\u0017\n\u0005\b¼\u0001\u0010,\u001a\u0006\b½\u0001\u0010¾\u0001\"\u0006\b¿\u0001\u0010À\u0001R \u0010Æ\u0001\u001a\u00030Â\u00018VX\u0096\u0084\u0002¢\u0006\u000f\n\u0005\bÃ\u0001\u0010s\u001a\u0006\bÄ\u0001\u0010Å\u0001R\"\u0010Ì\u0001\u001a\u0005\u0018\u00010Ç\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\bÈ\u0001\u0010É\u0001\u001a\u0006\bÊ\u0001\u0010Ë\u0001R \u0010Ò\u0001\u001a\u00030Í\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bÎ\u0001\u0010Ï\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001R \u0010Ø\u0001\u001a\u00030Ó\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bÔ\u0001\u0010Õ\u0001\u001a\u0006\bÖ\u0001\u0010×\u0001R \u0010Þ\u0001\u001a\u00030Ù\u00018\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bÚ\u0001\u0010Û\u0001\u001a\u0006\bÜ\u0001\u0010Ý\u0001R.\u0010ä\u0001\u001a\u00020l8V@\u0016X\u0096\u000e¢\u0006\u001d\n\u0006\bß\u0001\u0010à\u0001\u0012\u0005\bã\u0001\u0010:\u001a\u0005\bá\u0001\u0010o\"\u0005\bâ\u0001\u0010qR/\u0010ë\u0001\u001a\u00020\u00198\u0000@\u0000X\u0081\u000e¢\u0006\u001e\n\u0006\bå\u0001\u0010æ\u0001\u0012\u0005\bê\u0001\u0010:\u001a\u0006\bç\u0001\u0010è\u0001\"\u0005\bé\u0001\u0010\u001dR7\u0010ò\u0001\u001a\u0005\u0018\u00010ì\u00012\t\u0010*\u001a\u0005\u0018\u00010ì\u00018B@BX\u0082\u008e\u0002¢\u0006\u0017\n\u0005\bí\u0001\u0010,\u001a\u0006\bî\u0001\u0010ï\u0001\"\u0006\bð\u0001\u0010ñ\u0001R\"\u0010õ\u0001\u001a\u0005\u0018\u00010ì\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\bó\u0001\u0010s\u001a\u0006\bô\u0001\u0010ï\u0001R'\u0010ü\u0001\u001a\u00030ö\u00018\u0016X\u0097\u0004¢\u0006\u0017\n\u0006\b÷\u0001\u0010ø\u0001\u0012\u0005\bû\u0001\u0010:\u001a\u0006\bù\u0001\u0010ú\u0001R3\u0010\u0083\u0002\u001a\u00030ý\u00012\u0007\u0010*\u001a\u00030ý\u00018V@RX\u0096\u008e\u0002¢\u0006\u0017\n\u0005\bþ\u0001\u0010,\u001a\u0006\bÿ\u0001\u0010\u0080\u0002\"\u0006\b\u0081\u0002\u0010\u0082\u0002R3\u0010\u008a\u0002\u001a\u00030\u0084\u00022\u0007\u0010*\u001a\u00030\u0084\u00028V@RX\u0096\u008e\u0002¢\u0006\u0017\n\u0005\b\u0085\u0002\u0010,\u001a\u0006\b\u0086\u0002\u0010\u0087\u0002\"\u0006\b\u0088\u0002\u0010\u0089\u0002R \u0010\u0090\u0002\u001a\u00030\u008b\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u008c\u0002\u0010\u008d\u0002\u001a\u0006\b\u008e\u0002\u0010\u008f\u0002R \u0010\u0096\u0002\u001a\u00030\u0091\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0092\u0002\u0010\u0093\u0002\u001a\u0006\b\u0094\u0002\u0010\u0095\u0002R \u0010\u009c\u0002\u001a\u00030\u0097\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0098\u0002\u0010\u0099\u0002\u001a\u0006\b\u009a\u0002\u0010\u009b\u0002R'\u0010 \u0002\u001a\u00020l8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0006\b\u009d\u0002\u0010à\u0001\u001a\u0005\b\u009e\u0002\u0010o\"\u0005\b\u009f\u0002\u0010qR \u0010¦\u0002\u001a\u00030¡\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b¢\u0002\u0010£\u0002\u001a\u0006\b¤\u0002\u0010¥\u0002R&\u0010\u0010\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020\u000f8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b§\u0002\u0010.\"\u0005\b¨\u0002\u00100R\u0017\u0010«\u0002\u001a\u00020'8VX\u0096\u0004¢\u0006\b\u001a\u0006\b©\u0002\u0010ª\u0002R\u001f\u0010°\u0002\u001a\u00030¬\u00028VX\u0096\u0004¢\u0006\u000f\u0012\u0005\b¯\u0002\u0010:\u001a\u0006\b\u00ad\u0002\u0010®\u0002R\u0018\u0010´\u0002\u001a\u00030±\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\b²\u0002\u0010³\u0002R\u001a\u0010¸\u0002\u001a\u0005\u0018\u00010µ\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\b¶\u0002\u0010·\u0002R\u001a\u0010¼\u0002\u001a\u0005\u0018\u00010¹\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bº\u0002\u0010»\u0002R\u0018\u0010À\u0002\u001a\u00030½\u00028@X\u0080\u0004¢\u0006\b\u001a\u0006\b¾\u0002\u0010¿\u0002R\u0017\u0010Â\u0002\u001a\u00020\u00198VX\u0096\u0004¢\u0006\b\u001a\u0006\bÁ\u0002\u0010è\u0001R\u0016\u0010Ä\u0002\u001a\u00020l8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÃ\u0002\u0010oR\u001f\u0010É\u0002\u001a\u00030Å\u00028VX\u0097\u0004¢\u0006\u000f\u0012\u0005\bÈ\u0002\u0010:\u001a\u0006\bÆ\u0002\u0010Ç\u0002R\u0018\u0010Í\u0002\u001a\u00030Ê\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bË\u0002\u0010Ì\u0002R\u0018\u0010Ñ\u0002\u001a\u00030Î\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bÏ\u0002\u0010Ð\u0002R\u0018\u0010Õ\u0002\u001a\u00030Ò\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bÓ\u0002\u0010Ô\u0002R\u0016\u0010×\u0002\u001a\u00020l8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\bÖ\u0002\u0010oR\u0019\u0010Ú\u0002\u001a\u0004\u0018\u00010\u00008VX\u0096\u0004¢\u0006\b\u001a\u0006\bØ\u0002\u0010Ù\u0002R\u0018\u0010Þ\u0002\u001a\u00030Û\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\bÜ\u0002\u0010Ý\u0002¨\u0006â\u0002"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView;", "Landroid/view/ViewGroup;", "Landroidx/compose/ui/node/Owner;", "Landroidx/compose/ui/focus/PlatformFocusOwner;", "Landroidx/compose/ui/platform/ViewRootForTest;", "Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/compose/ui/node/OutOfFrameExecutor;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;", "Landroidx/compose/ui/focus/FocusListener;", "Landroidx/compose/ui/spatial/ExecuteDelayed;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/ui/platform/ComposeViewContext;", "composeViewContext", "<init>", "(Landroid/content/Context;Landroidx/compose/ui/platform/ComposeViewContext;)V", "", "getImportantForAutofill", "()I", "Landroidx/compose/ui/geometry/Rect;", "getEmbeddedViewFocusRect", "()Landroidx/compose/ui/geometry/Rect;", "", "intervalMillis", "", "setAccessibilityEventBatchIntervalMillis", "(J)V", "Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;", "handler", "setUncaughtExceptionHandler", "(Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;)V", "Lkotlin/Function1;", "callback", "setOnReadyForComposition", "(Lkotlin/jvm/functions/Function1;)V", "accessibilityId", "Landroid/view/View;", "findViewByAccessibilityIdTraversal", "(I)Landroid/view/View;", "<set-?>", NBSSpanMetricUnit.Bit, "Landroidx/compose/runtime/MutableState;", "get_composeViewContext", "()Landroidx/compose/ui/platform/ComposeViewContext;", "set_composeViewContext", "(Landroidx/compose/ui/platform/ComposeViewContext;)V", "_composeViewContext", "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "e", "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui", "()Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui", "(Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)V", "getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations", "()V", "primaryDirectionalMotionAxisOverride", "Landroidx/compose/ui/node/LayoutNodeDrawScope;", "f", "Landroidx/compose/ui/node/LayoutNodeDrawScope;", "getSharedDrawScope", "()Landroidx/compose/ui/node/LayoutNodeDrawScope;", "sharedDrawScope", "Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;", "g", "Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;", "getFrameEndScheduler$ui", "()Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;", "setFrameEndScheduler$ui", "(Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;)V", "frameEndScheduler", "Landroidx/compose/runtime/retain/RetainedValuesStore;", "value", "i", "Landroidx/compose/runtime/retain/RetainedValuesStore;", "getRetainedValuesStore", "()Landroidx/compose/runtime/retain/RetainedValuesStore;", "retainedValuesStore", "Landroidx/compose/ui/unit/Density;", com.batch.android.b.b.d, "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "density", "Landroidx/compose/ui/focus/FocusOwner;", "n", "Landroidx/compose/ui/focus/FocusOwner;", "getFocusOwner", "()Landroidx/compose/ui/focus/FocusOwner;", "focusOwner", "Lkotlin/coroutines/CoroutineContext;", "o", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "setCoroutineContext", "(Lkotlin/coroutines/CoroutineContext;)V", "coroutineContext", "Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;", "p", "Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;", "getDragAndDropManager", "()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;", "dragAndDropManager", "", "r", "isAttached", "()Z", "setAttached", "(Z)V", NBSSpanMetricUnit.Second, "Landroidx/compose/runtime/State;", "getDerivedIsAttached", "derivedIsAttached", "Landroidx/compose/ui/platform/ViewConfiguration;", "u", "Landroidx/compose/ui/platform/ViewConfiguration;", "getViewConfiguration", "()Landroidx/compose/ui/platform/ViewConfiguration;", "viewConfiguration", "Landroidx/compose/ui/layout/InsetsListener;", "v", "Landroidx/compose/ui/layout/InsetsListener;", "getInsetsListener", "()Landroidx/compose/ui/layout/InsetsListener;", "insetsListener", "Landroidx/compose/ui/node/LayoutNode;", "w", "Landroidx/compose/ui/node/LayoutNode;", "getRoot", "()Landroidx/compose/ui/node/LayoutNode;", "getRoot$annotations", "root", "Landroidx/collection/MutableIntObjectMap;", "x", "Landroidx/collection/MutableIntObjectMap;", "getLayoutNodes", "()Landroidx/collection/MutableIntObjectMap;", "layoutNodes", "Landroidx/compose/ui/spatial/RectManager;", "y", "Landroidx/compose/ui/spatial/RectManager;", "getRectManager", "()Landroidx/compose/ui/spatial/RectManager;", "rectManager", "z", "Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;", "getUncaughtExceptionHandler$ui", "()Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;", "setUncaughtExceptionHandler$ui", "uncaughtExceptionHandler", "Landroidx/compose/ui/semantics/SemanticsOwner;", "A", "Landroidx/compose/ui/semantics/SemanticsOwner;", "getSemanticsOwner", "()Landroidx/compose/ui/semantics/SemanticsOwner;", "semanticsOwner", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "C", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "getContentCaptureManager$ui", "()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "setContentCaptureManager$ui", "(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V", "contentCaptureManager", "Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "D", "Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "getAccessibilityManager", "()Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "accessibilityManager", "Landroidx/compose/ui/graphics/GraphicsContext;", "E", "Landroidx/compose/ui/graphics/GraphicsContext;", "getGraphicsContext", "()Landroidx/compose/ui/graphics/GraphicsContext;", "graphicsContext", "Landroidx/compose/ui/autofill/AutofillTree;", "F", "Landroidx/compose/ui/autofill/AutofillTree;", "getAutofillTree", "()Landroidx/compose/ui/autofill/AutofillTree;", "autofillTree", "Landroid/content/res/Configuration;", "M", "getConfiguration", "()Landroid/content/res/Configuration;", "setConfiguration", "(Landroid/content/res/Configuration;)V", "configuration", "Landroidx/compose/ui/text/intl/LocaleList;", "N", "getLocaleList", "()Landroidx/compose/ui/text/intl/LocaleList;", "localeList", "Landroidx/compose/ui/autofill/AndroidAutofillManager;", "P", "Landroidx/compose/ui/autofill/AndroidAutofillManager;", "get_autofillManager$ui", "()Landroidx/compose/ui/autofill/AndroidAutofillManager;", "_autofillManager", "Landroidx/compose/ui/platform/AndroidClipboardManager;", "R", "Landroidx/compose/ui/platform/AndroidClipboardManager;", "getClipboardManager", "()Landroidx/compose/ui/platform/AndroidClipboardManager;", "clipboardManager", "Landroidx/compose/ui/platform/AndroidClipboard;", "S", "Landroidx/compose/ui/platform/AndroidClipboard;", "getClipboard", "()Landroidx/compose/ui/platform/AndroidClipboard;", "clipboard", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "T", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "snapshotObserver", "V", "Z", "getShowLayoutBounds", "setShowLayoutBounds", "getShowLayoutBounds$annotations", "showLayoutBounds", "h1", "J", "getLastMatrixRecalculationAnimationTime$ui", "()J", "setLastMatrixRecalculationAnimationTime$ui", "getLastMatrixRecalculationAnimationTime$ui$annotations", "lastMatrixRecalculationAnimationTime", "Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "k1", "get_viewTreeOwners", "()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "set_viewTreeOwners", "(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V", "_viewTreeOwners", "l1", "getViewTreeOwners", "viewTreeOwners", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "r1", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "getFontLoader", "()Landroidx/compose/ui/text/font/Font$ResourceLoader;", "getFontLoader$annotations", "fontLoader", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "s1", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "setFontFamilyResolver", "(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V", "fontFamilyResolver", "Landroidx/compose/ui/unit/LayoutDirection;", "t1", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "layoutDirection", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "u1", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "getHapticFeedBack", "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "hapticFeedBack", "Landroidx/compose/ui/modifier/ModifierLocalManager;", "w1", "Landroidx/compose/ui/modifier/ModifierLocalManager;", "getModifierLocalManager", "()Landroidx/compose/ui/modifier/ModifierLocalManager;", "modifierLocalManager", "Landroidx/compose/ui/platform/TextToolbar;", "x1", "Landroidx/compose/ui/platform/TextToolbar;", "getTextToolbar", "()Landroidx/compose/ui/platform/TextToolbar;", "textToolbar", "L1", "getComposeViewContextIncrementedDuringInit$ui", "setComposeViewContextIncrementedDuringInit$ui", "composeViewContextIncrementedDuringInit", "Landroidx/compose/ui/input/pointer/PointerIconService;", "O1", "Landroidx/compose/ui/input/pointer/PointerIconService;", "getPointerIconService", "()Landroidx/compose/ui/input/pointer/PointerIconService;", "pointerIconService", "getComposeViewContext", "setComposeViewContext", "getView", "()Landroid/view/View;", "view", "Landroidx/compose/ui/platform/WindowInfo;", "getWindowInfo", "()Landroidx/compose/ui/platform/WindowInfo;", "getWindowInfo$annotations", "windowInfo", "Landroidx/compose/ui/node/RootForTest;", "getRootForTest", "()Landroidx/compose/ui/node/RootForTest;", "rootForTest", "Landroidx/compose/ui/autofill/Autofill;", "getAutofill", "()Landroidx/compose/ui/autofill/Autofill;", "autofill", "Landroidx/compose/ui/autofill/AutofillManager;", "getAutofillManager", "()Landroidx/compose/ui/autofill/AutofillManager;", "autofillManager", "Landroidx/compose/ui/platform/AndroidViewsHandler;", "getAndroidViewsHandler$ui", "()Landroidx/compose/ui/platform/AndroidViewsHandler;", "androidViewsHandler", "getMeasureIteration", "measureIteration", "getHasPendingMeasureOrLayout", "hasPendingMeasureOrLayout", "Landroidx/compose/ui/text/input/TextInputService;", "getTextInputService", "()Landroidx/compose/ui/text/input/TextInputService;", "getTextInputService$annotations", "textInputService", "Landroidx/compose/ui/platform/SoftwareKeyboardController;", "getSoftwareKeyboardController", "()Landroidx/compose/ui/platform/SoftwareKeyboardController;", "softwareKeyboardController", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "getPlacementScope", "()Landroidx/compose/ui/layout/Placeable$PlacementScope;", "placementScope", "Landroidx/compose/ui/input/InputModeManager;", "getInputModeManager", "()Landroidx/compose/ui/input/InputModeManager;", "inputModeManager", "getScrollCaptureInProgress$ui", "scrollCaptureInProgress", "getOutOfFrameExecutor", "()Landroidx/compose/ui/platform/AndroidComposeView;", "outOfFrameExecutor", "Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "getLegacyTextInputServiceAndroid", "()Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "legacyTextInputServiceAndroid", "Companion", "ViewTreeOwners", "RootModifierNode", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidComposeView extends ViewGroup implements Owner, PlatformFocusOwner, ViewRootForTest, MatrixPositionCalculator, DefaultLifecycleObserver, OutOfFrameExecutor, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener, FocusListener, ExecuteDelayed {
    public static Class Q1;
    public static Method R1;
    public static Method S1;
    public static e5 U1;
    public static Method V1;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public final SemanticsOwner semanticsOwner;
    public final WeakCache A1;
    public final AndroidComposeViewAccessibilityDelegateCompat B;
    public final MutableObjectList B1;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    public AndroidContentCaptureManager contentCaptureManager;
    public float C1;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    public final AndroidAccessibilityManager accessibilityManager;
    public float D1;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    public final GraphicsContext graphicsContext;
    public final AndroidComposeView$resendMotionEventRunnable$1 E1;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    public final AutofillTree autofillTree;
    public final n5 F1;
    public final MutableObjectList G;
    public boolean G1;
    public MutableObjectList H;
    public final IndirectPointerNavigationGestureDetector H1;
    public boolean I;
    public final Function0 I1;
    public boolean J;
    public final CalculateMatrixToWindowApi29 J1;
    public final MotionEventAdapter K;
    public boolean K1;
    public final PointerInputEventProcessor L;

    /* JADX INFO: renamed from: L1, reason: from kotlin metadata */
    public boolean composeViewContextIncrementedDuringInit;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    public final MutableState configuration;
    public final ScrollCapture M1;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    public final State localeList;
    public View N1;
    public final AndroidAutofill O;
    public final AndroidComposeView$pointerIconService$1 O1;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    public final AndroidAutofillManager _autofillManager;
    public boolean Q;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    public final AndroidClipboardManager clipboardManager;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    public final AndroidClipboard clipboard;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    public final OwnerSnapshotObserver snapshotObserver;

    /* JADX INFO: renamed from: V, reason: from kotlin metadata */
    public boolean showLayoutBounds;
    public AndroidViewsHandler W;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final MutableState _composeViewContext;
    public final MeasureAndLayoutDelegate b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f9864c;
    public long c1;
    public final boolean d;
    public final int[] d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxisOverride;
    public final float[] e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public final LayoutNodeDrawScope sharedDrawScope;
    public final float[] f1;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler;
    public final float[] g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry f9867h;
    public Constraints h0;

    /* JADX INFO: renamed from: h1, reason: from kotlin metadata */
    public long lastMatrixRecalculationAnimationTime;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public RetainedValuesStore retainedValuesStore;
    public boolean i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayDeque f9869j;
    public long j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final n5 f9870k;

    /* JADX INFO: renamed from: k1, reason: from kotlin metadata */
    public final MutableState _viewTreeOwners;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    public final MutableState density;

    /* JADX INFO: renamed from: l1, reason: from kotlin metadata */
    public final State viewTreeOwners;
    public final View m;
    public Function1 m1;
    public final FocusOwnerImpl n;
    public TextInputServiceAndroid n1;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    public CoroutineContext coroutineContext;
    public TextInputService o1;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    public final AndroidDragAndDropManager dragAndDropManager;
    public final AtomicReference p1;
    public final LazyWindowInfo q;
    public DelegatingSoftwareKeyboardController q1;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    public final MutableState isAttached;

    /* JADX INFO: renamed from: r1, reason: from kotlin metadata */
    public final Font.ResourceLoader fontLoader;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    public final State derivedIsAttached;

    /* JADX INFO: renamed from: s1, reason: from kotlin metadata */
    public final MutableState fontFamilyResolver;
    public final CanvasHolder t;
    public boolean t0;

    /* JADX INFO: renamed from: t1, reason: from kotlin metadata */
    public final MutableState layoutDirection;
    public final AndroidViewConfiguration u;

    /* JADX INFO: renamed from: u1, reason: from kotlin metadata */
    public final HapticFeedback hapticFeedBack;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    public final InsetsListener insetsListener;
    public final InputModeManagerImpl v1;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    public final LayoutNode root;

    /* JADX INFO: renamed from: w1, reason: from kotlin metadata */
    public final ModifierLocalManager modifierLocalManager;

    /* JADX INFO: renamed from: x, reason: from kotlin metadata */
    public final MutableIntObjectMap layoutNodes;
    public final AndroidTextToolbar x1;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    public final RectManager rectManager;
    public MotionEvent y1;

    /* JADX INFO: renamed from: z, reason: from kotlin metadata */
    public RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler;
    public long z1;
    public static final Companion P1 = new Companion(null);
    public static final MutableObjectList T1 = new MutableObjectList(0, 1, null);

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0007¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView$Companion;", "", "Ljava/lang/Class;", "systemPropertiesClass", "Ljava/lang/Class;", "Ljava/lang/reflect/Method;", "getBooleanMethod", "Ljava/lang/reflect/Method;", "addChangeCallbackMethod", "Landroidx/collection/MutableObjectList;", "Landroidx/compose/ui/platform/AndroidComposeView;", "composeViews", "Landroidx/collection/MutableObjectList;", "Ljava/lang/Runnable;", "systemPropertiesChangedRunnable", "Ljava/lang/Runnable;", "dispatchOnScrollChangedMethod", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a() {
            try {
                if (AndroidComposeView.Q1 == null) {
                    AndroidComposeView.Q1 = Class.forName("android.os.SystemProperties");
                }
                if (AndroidComposeView.R1 == null) {
                    Class cls = AndroidComposeView.Q1;
                    AndroidComposeView.R1 = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
                }
                Method method = AndroidComposeView.R1;
                Object objInvoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
                return Intrinsics.c(objInvoke instanceof Boolean ? (Boolean) objInvoke : null, Boolean.TRUE);
            } catch (Exception unused) {
                return false;
            }
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\bB\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/relocation/BringIntoViewModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;", "Landroidx/compose/ui/input/key/KeyInputModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/layout/WindowInsetsRulerProvider;", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class RootModifierNode extends Modifier.Node implements BringIntoViewModifierNode, SemanticsModifierNode, RotaryInputModifierNode, KeyInputModifierNode, LayoutModifierNode, TraversableNode, WindowInsetsRulerProvider {
        public final Function1 p = new Function1<RulerScope, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$RootModifierNode$rulerLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                RulerScope rulerScope = (RulerScope) obj;
                AndroidComposeView androidComposeView = AndroidComposeView.this;
                if (androidComposeView.getInsetsListener().getGeneration().f() > 0) {
                    MutableIntObjectMap mutableIntObjectMap = WindowInsetsRulers_androidKt.f9600a;
                    long jA = rulerScope.w().a();
                    ScatterMap<Object, WindowWindowInsetsAnimationValues> insetsValues = androidComposeView.getInsetsListener().getInsetsValues();
                    int i2 = (int) (jA >> 32);
                    int i3 = (int) (jA & BodyPartID.bodyIdMax);
                    for (WindowInsetsRulers windowInsetsRulers : WindowInsetsRulers_androidKt.f9601b) {
                        Object objE = insetsValues.e(windowInsetsRulers);
                        objE.getClass();
                        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) objE;
                        WindowInsetsRulers_androidKt.a(rulerScope, windowInsetsRulers.getF9599c(), windowWindowInsetsAnimationValues.f9607h, i2, i3);
                        if (((Boolean) ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.f9603b).getF10755b()).booleanValue()) {
                            WindowInsetsRulers_androidKt.a(rulerScope, windowWindowInsetsAnimationValues.f9606f, windowWindowInsetsAnimationValues.f9609j, i2, i3);
                            WindowInsetsRulers_androidKt.a(rulerScope, windowWindowInsetsAnimationValues.g, windowWindowInsetsAnimationValues.f9610k, i2, i3);
                        }
                        WindowInsetsRulers_androidKt.a(rulerScope, windowInsetsRulers.getD(), windowWindowInsetsAnimationValues.f9608i, i2, i3);
                    }
                    MutableObjectList<MutableState<Rect>> displayCutouts = androidComposeView.getInsetsListener().getDisplayCutouts();
                    if (displayCutouts.e()) {
                        SnapshotStateList<RectRulers> displayCutoutRulers = androidComposeView.getInsetsListener().getDisplayCutoutRulers();
                        Object[] objArr = displayCutouts.f3345a;
                        int i4 = displayCutouts.f3346b;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MutableState mutableState = (MutableState) objArr[i5];
                            RectRulers rectRulers = (RectRulers) displayCutoutRulers.get(i5);
                            Rect rect = (Rect) mutableState.getF10755b();
                            rulerScope.F0(rectRulers.getF9557b(), rect.left);
                            rulerScope.F0(rectRulers.getF9558c(), rect.top);
                            rulerScope.F0(rectRulers.getD(), rect.right);
                            rulerScope.F0(rectRulers.getF9559e(), rect.bottom);
                        }
                    }
                }
                return Unit.f71739a;
            }
        };

        public RootModifierNode() {
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        public final boolean L0(KeyEvent keyEvent) {
            return false;
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        }

        @Override // androidx.compose.ui.node.TraversableNode
        /* JADX INFO: renamed from: M */
        public final Object getR() {
            return "androidx.compose.ui.layout.WindowInsetsRulers";
        }

        @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
        public final Object U1(NodeCoordinator nodeCoordinator, Function0 function0, ContinuationImpl continuationImpl) {
            long jE = LayoutCoordinatesKt.e(nodeCoordinator);
            androidx.compose.ui.geometry.Rect rect = (androidx.compose.ui.geometry.Rect) function0.mo47invoke();
            androidx.compose.ui.geometry.Rect rectI = rect != null ? rect.i(jE) : null;
            if (rectI != null) {
                AndroidComposeView.this.requestRectangleOnScreen(new Rect((int) rectI.f8811a, (int) rectI.f8812b, (int) rectI.f8813c, (int) rectI.d), false);
            }
            return Unit.f71739a;
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        public final boolean b1(KeyEvent keyEvent) {
            final FocusDirection focusDirection;
            int i2;
            int[] iArr = FocusInteropUtils_androidKt.f8739a;
            long jA = KeyEvent_androidKt.a(keyEvent);
            Key.f9226a.getClass();
            if (Key.a(jA, Key.f9228c)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.d);
            } else if (Key.a(jA, Key.d)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8732c);
            } else if (Key.a(jA, Key.q)) {
                if (keyEvent.isShiftPressed()) {
                    FocusDirection.f8731b.getClass();
                    i2 = FocusDirection.d;
                } else {
                    FocusDirection.f8731b.getClass();
                    i2 = FocusDirection.f8732c;
                }
                focusDirection = new FocusDirection(i2);
            } else if (Key.a(jA, Key.f9231h)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8734f);
            } else if (Key.a(jA, Key.g)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8733e);
            } else if (Key.a(jA, Key.f9229e) || Key.a(jA, Key.D)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.g);
            } else if (Key.a(jA, Key.f9230f) || Key.a(jA, Key.E)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8735h);
            } else if (Key.a(jA, Key.f9232i) || Key.a(jA, Key.s) || Key.a(jA, Key.F)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8736i);
            } else if (Key.a(jA, Key.f9227b) || Key.a(jA, Key.v)) {
                FocusDirection.f8731b.getClass();
                focusDirection = new FocusDirection(FocusDirection.f8737j);
            } else {
                focusDirection = null;
            }
            if (focusDirection == null) {
                return false;
            }
            int i3 = focusDirection.f8738a;
            int iB = KeyEvent_androidKt.b(keyEvent);
            KeyEventType.f9236a.getClass();
            if (iB != KeyEventType.f9238c) {
                return false;
            }
            AndroidComposeView androidComposeView = AndroidComposeView.this;
            FocusTargetNode focusTargetNodeG = androidComposeView.getFocusOwner().g();
            if (focusTargetNodeG == null || !focusTargetNodeG.p || !androidComposeView.d(i3)) {
                Boolean boolA = androidComposeView.getFocusOwner().A(i3, androidComposeView.getEmbeddedViewFocusRect(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$RootModifierNode$onKeyEvent$focusWasMovedOrCancelled$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(((FocusTargetNode) obj).H(focusDirection.f8738a));
                    }
                });
                if (!(boolA != null ? boolA.booleanValue() : true)) {
                    if (!FocusOwnerImplKt.a(i3)) {
                        return false;
                    }
                    Integer numC = FocusInteropUtils_androidKt.c(i3);
                    int iIntValue = numC != null ? numC.intValue() : 2;
                    FocusFinder focusFinder = FocusFinder.getInstance();
                    View rootView = androidComposeView.getRootView();
                    rootView.getClass();
                    View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, androidComposeView.getView(), iIntValue);
                    if (viewFindNextFocus == null || viewFindNextFocus.equals(androidComposeView)) {
                        return androidComposeView.getFocusOwner().s(i3);
                    }
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
            final Placeable placeableT = measurable.T(j2);
            return measureScope.B1(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), this.p, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$RootModifierNode$measure$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    return Unit.f71739a;
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "savedStateRegistryOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "viewModelStoreOwner", "<init>", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewTreeOwners {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LifecycleOwner f9874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SavedStateRegistryOwner f9875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ViewModelStoreOwner f9876c;

        public ViewTreeOwners(LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
            this.f9874a = lifecycleOwner;
            this.f9875b = savedStateRegistryOwner;
            this.f9876c = viewModelStoreOwner;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$getFocusedRect$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/focus/FocusTargetNode;", "invoke", "(Landroidx/compose/ui/focus/FocusTargetNode;)Ljava/lang/Boolean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    final class C03481 extends Lambda implements Function1<FocusTargetNode, Boolean> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final C03481 f9882c = new C03481(1);

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v74, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    /* JADX WARN: Type inference failed for: r0v86, types: [androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1] */
    public AndroidComposeView(Context context, ComposeViewContext composeViewContext) {
        LayoutDirection layoutDirection;
        int i2;
        super(context);
        this._composeViewContext = SnapshotStateKt.g(composeViewContext);
        Offset.f8806b.getClass();
        this.f9864c = Offset.d;
        int i3 = 1;
        this.d = true;
        this.sharedDrawScope = composeViewContext.r;
        this.retainedValuesStore = ForgetfulRetainedValuesStore.f8412a;
        this.f9869j = new ArrayDeque();
        int i4 = 0;
        this.f9870k = new n5(this, i4);
        this.density = SnapshotStateKt.f(AndroidDensity_androidKt.a(context), SnapshotStateKt.k());
        this.n = new FocusOwnerImpl(this, this);
        this.coroutineContext = composeViewContext.f10010b.getX();
        this.dragAndDropManager = new AndroidDragAndDropManager(new AndroidComposeView$dragAndDropManager$1(3, this, AndroidComposeView.class, "startDrag", "startDrag-12SF9DM(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLkotlin/jvm/functions/Function1;)Z", 0));
        this.q = new LazyWindowInfo();
        this.isAttached = SnapshotStateKt.g(Boolean.FALSE);
        this.derivedIsAttached = SnapshotStateKt.e(new Function0<Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$derivedIsAttached$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) this.f9879c.isAttached).getF10755b();
                bool.getClass();
                return bool;
            }
        });
        this.t = composeViewContext.t;
        this.u = composeViewContext.q;
        this.insetsListener = new InsetsListener(this);
        Object[] objArr = 0;
        LayoutNode layoutNode = new LayoutNode(false, 0, 3, null);
        layoutNode.l(RootMeasurePolicy.f9560b);
        layoutNode.n(getDensity());
        layoutNode.f(getViewConfiguration());
        layoutNode.m(new ModifierNodeElement<RootModifierNode>() { // from class: androidx.compose.ui.platform.AndroidComposeView$root$1$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final Modifier.Node a() {
                return this.f9892b.new RootModifierNode();
            }

            public final boolean equals(Object obj) {
                return obj == this;
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
            }

            public final int hashCode() {
                return this.f9892b.hashCode();
            }
        }.o(getFocusOwner().getF8750e()).o(getDragAndDropManager().f8684e));
        this.root = layoutNode;
        this.layoutNodes = IntObjectMapKt.a();
        this.rectManager = new RectManager(getLayoutNodes(), this);
        this.semanticsOwner = new SemanticsOwner(getRoot(), new EmptySemanticsModifier(), getLayoutNodes());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.B = androidComposeViewAccessibilityDelegateCompat;
        this.contentCaptureManager = new AndroidContentCaptureManager(this, new AndroidComposeView$contentCaptureManager$1(0, this, AndroidComposeView_androidKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", 1));
        this.accessibilityManager = composeViewContext.f10016j;
        this.graphicsContext = AndroidGraphicsContext_androidKt.a(this);
        this.autofillTree = new AutofillTree();
        this.G = new MutableObjectList(i4, i3, 0 == true ? 1 : 0);
        this.K = new MotionEventAdapter();
        this.L = new PointerInputEventProcessor(getRoot());
        this.configuration = SnapshotStateKt.g(new Configuration(context.getResources().getConfiguration()));
        this.localeList = SnapshotStateKt.e(new Function0<LocaleList>() { // from class: androidx.compose.ui.platform.AndroidComposeView$localeList$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LocaleListCompat localeListCompatF = LocaleListCompat.f(this.f9885c.getConfiguration().getLocales());
                if (localeListCompatF.c()) {
                    localeListCompatF = LocaleListCompat.f(android.os.LocaleList.getDefault());
                }
                int iD = localeListCompatF.d();
                ArrayList arrayList = new ArrayList(iD);
                for (int i5 = 0; i5 < iD; i5++) {
                    Locale localeB = localeListCompatF.b(i5);
                    localeB.getClass();
                    arrayList.add(new androidx.compose.ui.text.intl.Locale(localeB));
                }
                return new LocaleList(arrayList);
            }
        });
        this.O = new AndroidAutofill(this, getAutofillTree());
        AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
        if (autofillManager == null) {
            throw defpackage.a.s("Autofill service could not be located.");
        }
        this._autofillManager = new AndroidAutofillManager(new PlatformAutofillManagerImpl(autofillManager), getSemanticsOwner(), this, getRectManager(), context.getPackageName());
        this.clipboardManager = composeViewContext.l;
        this.clipboard = composeViewContext.m;
        this.snapshotObserver = new OwnerSnapshotObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final Function0<Unit> function0 = (Function0) obj;
                AndroidComposeView androidComposeView = this.f9893c;
                final RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = androidComposeView.getUncaughtExceptionHandler();
                if (uncaughtExceptionHandler != null) {
                    function0 = new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1$command$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            try {
                                function0.mo47invoke();
                            } catch (Exception unused) {
                                uncaughtExceptionHandler.a();
                            }
                            return Unit.f71739a;
                        }
                    };
                }
                Handler handler = androidComposeView.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    function0.mo47invoke();
                } else {
                    Handler handler2 = androidComposeView.getHandler();
                    if (handler2 != null) {
                        handler2.post(new r3(function0, 2));
                    }
                }
                return Unit.f71739a;
            }
        });
        this.b1 = new MeasureAndLayoutDelegate(getRoot());
        IntOffset.Companion companion = IntOffset.f11012b;
        this.c1 = 9223372034707292159L;
        this.d1 = new int[]{0, 0};
        this.e1 = Matrix.a();
        this.f1 = Matrix.a();
        this.g1 = Matrix.a();
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.j1 = Offset.f8807c;
        this._viewTreeOwners = SnapshotStateKt.g(null);
        this.viewTreeOwners = SnapshotStateKt.e(new Function0<ViewTreeOwners>() { // from class: androidx.compose.ui.platform.AndroidComposeView$viewTreeOwners$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f9898c.get_viewTreeOwners();
            }
        });
        this.p1 = new AtomicReference(null);
        this.fontLoader = composeViewContext.n;
        this.fontFamilyResolver = composeViewContext.o;
        int layoutDirection2 = context.getResources().getConfiguration().getLayoutDirection();
        int[] iArr = FocusInteropUtils_androidKt.f8739a;
        if (layoutDirection2 != 0) {
            layoutDirection = layoutDirection2 != 1 ? null : LayoutDirection.Rtl;
        } else {
            layoutDirection = LayoutDirection.Ltr;
        }
        this.layoutDirection = SnapshotStateKt.g(layoutDirection == null ? LayoutDirection.Ltr : layoutDirection);
        this.hapticFeedBack = composeViewContext.p;
        if (isInTouchMode()) {
            InputMode.f9205b.getClass();
            i2 = InputMode.f9206c;
        } else {
            InputMode.f9205b.getClass();
            i2 = InputMode.d;
        }
        this.v1 = new InputModeManagerImpl(i2, new AndroidComposeView$_inputModeManager$1(), null);
        this.modifierLocalManager = new ModifierLocalManager(this);
        this.x1 = new AndroidTextToolbar(this);
        this.A1 = new WeakCache();
        this.B1 = new MutableObjectList(i4, i3, objArr == true ? 1 : 0);
        this.E1 = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                int actionMasked;
                this.this$0.removeCallbacks(this);
                MotionEvent motionEvent = this.this$0.y1;
                if (motionEvent == null || (actionMasked = motionEvent.getActionMasked()) == 10 || actionMasked == 1) {
                    return;
                }
                int i5 = 7;
                if (actionMasked != 7 && actionMasked != 9) {
                    i5 = 2;
                }
                int i6 = i5;
                AndroidComposeView androidComposeView = this.this$0;
                androidComposeView.c0(motionEvent, i6, androidComposeView.z1, false);
            }
        };
        this.F1 = new n5(this, i3);
        this.H1 = new IndirectPointerNavigationGestureDetector(context, new Function1<FocusDirection, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$indirectPointerNavigationGestureDetector$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f9884c.getFocusOwner().d(((FocusDirection) obj).f8738a, false);
                return Unit.f71739a;
            }
        });
        this.I1 = new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventOnLayout$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int actionMasked;
                AndroidComposeView androidComposeView = this.f9891c;
                MotionEvent motionEvent = androidComposeView.y1;
                if (motionEvent != null && ((actionMasked = motionEvent.getActionMasked()) == 7 || actionMasked == 9)) {
                    androidComposeView.z1 = SystemClock.uptimeMillis();
                    androidComposeView.post(androidComposeView.E1);
                }
                return Unit.f71739a;
            }
        };
        this.J1 = new CalculateMatrixToWindowApi29();
        addOnAttachStateChangeListener(this.contentCaptureManager);
        setWillNotDraw(false);
        setFocusable(true);
        AndroidComposeViewVerificationHelperMethodsO.f9932a.a(this, 1, false);
        setFocusableInTouchMode(true);
        setClipChildren(false);
        ViewCompat.t(this, androidComposeViewAccessibilityDelegateCompat);
        setOnDragListener(getDragAndDropManager());
        getRoot().s(this);
        AndroidComposeViewForceDarkModeQ.f9927a.a(this);
        if (T()) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
            view.setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
            this.m = view;
            addView(view, -1);
        }
        this.M1 = Build.VERSION.SDK_INT >= 31 ? new ScrollCapture() : null;
        this.O1 = new PointerIconService() { // from class: androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public PointerIcon f9886a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public PointerIcon f9887b;

            {
                PointerIcon.f9321a.getClass();
                this.f9886a = PointerIcon.Companion.f9323b;
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public final void a(PointerIcon pointerIcon) {
                if (pointerIcon == null) {
                    PointerIcon.f9321a.getClass();
                    pointerIcon = PointerIcon.Companion.f9323b;
                }
                this.f9886a = pointerIcon;
                AndroidComposeViewVerificationHelperMethodsN.f9931a.a(this.f9888c, pointerIcon);
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            /* JADX INFO: renamed from: b, reason: from getter */
            public final PointerIcon getF9887b() {
                return this.f9887b;
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public final void c(PointerIcon pointerIcon) {
                this.f9887b = pointerIcon;
            }
        };
    }

    public static final void K(AndroidComposeView androidComposeView, int i2, AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int iB;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = androidComposeView.B;
        if (Intrinsics.c(str, androidComposeViewAccessibilityDelegateCompat.E)) {
            int iB2 = androidComposeViewAccessibilityDelegateCompat.C.b(i2);
            if (iB2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, iB2);
                return;
            }
            return;
        }
        if (!Intrinsics.c(str, androidComposeViewAccessibilityDelegateCompat.F) || (iB = androidComposeViewAccessibilityDelegateCompat.D.b(i2)) == -1) {
            return;
        }
        accessibilityNodeInfo.getExtras().putInt(str, iB);
    }

    public static void O(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).F();
            } else if (childAt instanceof ViewGroup) {
                O((ViewGroup) childAt);
            }
        }
    }

    public static long P(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            ULong.Companion companion = ULong.INSTANCE;
            return size;
        }
        if (mode == 0) {
            ULong.Companion companion2 = ULong.INSTANCE;
            return 2147483647L;
        }
        if (mode != 1073741824) {
            r81.b();
            return 0L;
        }
        long j2 = size;
        ULong.Companion companion3 = ULong.INSTANCE;
        return j2 | (j2 << 32);
    }

    public static void R(LayoutNode layoutNode) {
        layoutNode.W();
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            R((LayoutNode) objArr[i3]);
        }
    }

    public static boolean T() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public static boolean U(MotionEvent motionEvent) {
        boolean z = (Float.floatToRawIntBits(motionEvent.getX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawY()) & Integer.MAX_VALUE) >= 2139095040;
        if (!z) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i2 = 1; i2 < pointerCount; i2++) {
                z = (Float.floatToRawIntBits(motionEvent.getX(i2)) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY(i2)) & Integer.MAX_VALUE) >= 2139095040 || !MotionEventVerifierApi29.f10127a.a(motionEvent, i2);
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final boolean getDerivedIsAttached() {
        return ((Boolean) this.derivedIsAttached.getF10755b()).booleanValue();
    }

    @Deprecated
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui$annotations() {
    }

    private final TextInputServiceAndroid getLegacyTextInputServiceAndroid() {
        TextInputServiceAndroid textInputServiceAndroid = this.n1;
        if (textInputServiceAndroid != null) {
            return textInputServiceAndroid;
        }
        TextInputServiceAndroid textInputServiceAndroid2 = new TextInputServiceAndroid(getView(), this);
        this.n1 = textInputServiceAndroid2;
        return textInputServiceAndroid2;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations, reason: not valid java name */
    public static /* synthetic */ void m6getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui$annotations() {
    }

    public static /* synthetic */ void getRoot$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    @Deprecated
    public static /* synthetic */ void getTextInputService$annotations() {
    }

    public static /* synthetic */ void getWindowInfo$annotations() {
    }

    private final ComposeViewContext get_composeViewContext() {
        return (ComposeViewContext) ((SnapshotMutableStateImpl) this._composeViewContext).getF10755b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ViewTreeOwners get_viewTreeOwners() {
        return (ViewTreeOwners) ((SnapshotMutableStateImpl) this._viewTreeOwners).getF10755b();
    }

    private final void setAttached(boolean z) {
        ((SnapshotMutableStateImpl) this.isAttached).setValue(Boolean.valueOf(z));
    }

    private void setDensity(Density density) {
        ((SnapshotMutableStateImpl) this.density).setValue(density);
    }

    private void setFontFamilyResolver(FontFamily.Resolver resolver) {
        this.fontFamilyResolver.setValue(resolver);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        ((SnapshotMutableStateImpl) this.layoutDirection).setValue(layoutDirection);
    }

    private final void set_composeViewContext(ComposeViewContext composeViewContext) {
        ((SnapshotMutableStateImpl) this._composeViewContext).setValue(composeViewContext);
    }

    private final void set_viewTreeOwners(ViewTreeOwners viewTreeOwners) {
        ((SnapshotMutableStateImpl) this._viewTreeOwners).setValue(viewTreeOwners);
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public final void A(FocusTargetModifierNode focusTargetModifierNode, FocusTargetNode focusTargetNode) {
        NodeChain nodeChain;
        boolean z;
        NodeChain nodeChain2;
        boolean z2;
        if (focusTargetModifierNode != null) {
            if (!focusTargetModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node f8608b = focusTargetModifierNode.getF8608b();
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetModifierNode);
            MutableScatterSet mutableScatterSet = null;
            ArrayList arrayList = null;
            while (layoutNodeF != null) {
                if ((layoutNodeF.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                    while (f8608b != null) {
                        if ((f8608b.d & PKIFailureInfo.badSenderNonce) != 0) {
                            Modifier.Node nodeB = f8608b;
                            MutableVector mutableVector = null;
                            while (nodeB != null) {
                                if (nodeB instanceof IndirectPointerInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(nodeB);
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2 && (nodeB.d & PKIFailureInfo.badSenderNonce) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node node = ((DelegatingNode) nodeB).q; node != null; node = node.g) {
                                        if ((node.d & PKIFailureInfo.badSenderNonce) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                nodeB = node;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector.b(node);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        f8608b = f8608b.f8611f;
                    }
                }
                layoutNodeF = layoutNodeF.O();
                f8608b = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
            if (arrayList == null) {
                return;
            }
            if (focusTargetNode != null) {
                if (!focusTargetNode.f8608b.o) {
                    InlineClassHelperKt.c("visitAncestors called on an unattached node");
                }
                Modifier.Node node2 = focusTargetNode.f8608b;
                LayoutNode layoutNodeF2 = DelegatableNodeKt.f(focusTargetNode);
                MutableScatterSet mutableScatterSetA = null;
                while (layoutNodeF2 != null) {
                    if ((layoutNodeF2.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                        while (node2 != null) {
                            if ((node2.d & PKIFailureInfo.badSenderNonce) != 0) {
                                Modifier.Node nodeB2 = node2;
                                MutableVector mutableVector2 = null;
                                while (nodeB2 != null) {
                                    if (nodeB2 instanceof IndirectPointerInputModifierNode) {
                                        if (mutableScatterSetA == null) {
                                            mutableScatterSetA = ScatterSetKt.a();
                                        }
                                        mutableScatterSetA.d(nodeB2);
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (z && (nodeB2.d & PKIFailureInfo.badSenderNonce) != 0 && (nodeB2 instanceof DelegatingNode)) {
                                        int i3 = 0;
                                        for (Modifier.Node node3 = ((DelegatingNode) nodeB2).q; node3 != null; node3 = node3.g) {
                                            if ((node3.d & PKIFailureInfo.badSenderNonce) != 0) {
                                                i3++;
                                                if (i3 == 1) {
                                                    nodeB2 = node3;
                                                } else {
                                                    if (mutableVector2 == null) {
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (nodeB2 != null) {
                                                        mutableVector2.b(nodeB2);
                                                        nodeB2 = null;
                                                    }
                                                    mutableVector2.b(node3);
                                                }
                                            }
                                        }
                                        if (i3 == 1) {
                                        }
                                    }
                                    nodeB2 = DelegatableNodeKt.b(mutableVector2);
                                }
                            }
                            node2 = node2.f8611f;
                        }
                    }
                    layoutNodeF2 = layoutNodeF2.O();
                    node2 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
                }
                mutableScatterSet = mutableScatterSetA;
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                IndirectPointerInputModifierNode indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) arrayList.get(i4);
                if (!(mutableScatterSet != null ? mutableScatterSet.a(indirectPointerInputModifierNode) : false)) {
                    indirectPointerInputModifierNode.w1();
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void B(LayoutNode layoutNode, boolean z, boolean z2, boolean z3) {
        LayoutNode layoutNodeO;
        LayoutNode layoutNodeO2;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        if (!z) {
            if (measureAndLayoutDelegate.r(layoutNode, z2) && z3) {
                a0(layoutNode);
                return;
            }
            return;
        }
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.f9744b;
        LayoutNode layoutNode2 = layoutNode.f9694j;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        if (layoutNode2 == null) {
            InlineClassHelperKt.c("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
        }
        int i2 = MeasureAndLayoutDelegate.WhenMappings.f9754a[layoutNodeLayoutDelegate.d.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                measureAndLayoutDelegate.f9748h.b(new MeasureAndLayoutDelegate.PostponedRequest(layoutNode, true, z2));
                return;
            }
            if (i2 != 5) {
                v40.g();
                return;
            }
            if (!layoutNodeLayoutDelegate.f9709e || z2) {
                layoutNodeLayoutDelegate.f9709e = true;
                layoutNodeLayoutDelegate.p.w = true;
                if (layoutNode.S) {
                    return;
                }
                if ((Intrinsics.c(layoutNode.a0(), Boolean.TRUE) || MeasureAndLayoutDelegate.i(layoutNode)) && ((layoutNodeO = layoutNode.O()) == null || !layoutNodeO.I.f9709e)) {
                    depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.LookaheadMeasurement);
                } else if ((layoutNode.A() || MeasureAndLayoutDelegate.j(layoutNode)) && ((layoutNodeO2 = layoutNode.O()) == null || !layoutNodeO2.K())) {
                    depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.Measurement);
                }
                if (measureAndLayoutDelegate.d || !z3) {
                    return;
                }
                a0(layoutNode);
            }
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void C(float f2) {
        if (T()) {
            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (Float.isNaN(this.C1) || f2 > this.C1) {
                    this.C1 = f2;
                    return;
                }
                return;
            }
            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (Float.isNaN(this.D1) || f2 < this.D1) {
                    this.D1 = f2;
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void D(LayoutNode layoutNode) {
        TouchUserInteractionHandler touchUserInteractionHandler = UserInteractionsApi.f26698a;
        touchUserInteractionHandler.getClass();
        Iterator it = touchUserInteractionHandler.f26686a.values().iterator();
        while (it.hasNext()) {
            ((List) it.next()).remove(layoutNode);
        }
        getLayoutNodes().g(layoutNode.f9689c);
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.f9744b;
        depthSortedSetsForDifferentPasses.f9659a.c(layoutNode);
        depthSortedSetsForDifferentPasses.f9660b.c(layoutNode);
        depthSortedSetsForDifferentPasses.f9661c.c(layoutNode);
        measureAndLayoutDelegate.f9746e.f9809a.n(layoutNode);
        this.Q = true;
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager == null || !androidAutofillManager.f8633i.g(layoutNode.f9689c)) {
            return;
        }
        androidAutofillManager.f8628b.d(androidAutofillManager.d, layoutNode.f9689c, false);
    }

    @Override // androidx.compose.ui.node.Owner
    public final void E(Function0 function0) {
        MutableObjectList mutableObjectList = this.B1;
        if (mutableObjectList.c(function0) >= 0) {
            return;
        }
        mutableObjectList.g(function0);
    }

    @Override // androidx.compose.ui.node.Owner
    public final void F() {
        if (this.Q) {
            getSnapshotObserver().a();
            this.Q = false;
        }
        AndroidViewsHandler androidViewsHandler = this.W;
        if (androidViewsHandler != null) {
            O(androidViewsHandler);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            MutableIntSet mutableIntSet = androidAutofillManager.f8633i;
            if (mutableIntSet.d == 0 && androidAutofillManager.f8634j) {
                androidAutofillManager.f8628b.commit();
                androidAutofillManager.f8634j = false;
            }
            if (mutableIntSet.d != 0) {
                androidAutofillManager.f8634j = true;
            }
        }
        while (true) {
            MutableObjectList mutableObjectList = this.B1;
            if (!mutableObjectList.e() || mutableObjectList.b(0) == null) {
                return;
            }
            int i2 = mutableObjectList.f3346b;
            for (int i3 = 0; i3 < i2; i3++) {
                Function0 function0 = (Function0) mutableObjectList.b(i3);
                mutableObjectList.p(i3, null);
                if (function0 != null) {
                    function0.mo47invoke();
                }
            }
            mutableObjectList.n(0, i2);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void G() {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.B;
        androidComposeViewAccessibilityDelegateCompat.y = true;
        Handler handler = androidComposeViewAccessibilityDelegateCompat.f9899e.getHandler();
        if (androidComposeViewAccessibilityDelegateCompat.v() && !androidComposeViewAccessibilityDelegateCompat.J && handler != null) {
            androidComposeViewAccessibilityDelegateCompat.J = true;
            handler.post(androidComposeViewAccessibilityDelegateCompat.L);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.f8665h = true;
        Handler handler2 = androidContentCaptureManager.f8661b.getHandler();
        if (!androidContentCaptureManager.e() || androidContentCaptureManager.n || handler2 == null) {
            return;
        }
        androidContentCaptureManager.n = true;
        handler2.post(androidContentCaptureManager.o);
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public final Object H(long j2, Function0 function0) {
        r3 r3Var = new r3(function0, 1);
        postDelayed(r3Var, j2);
        return r3Var;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void I(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager == null || !androidAutofillManager.f8633i.g(layoutNode.f9689c)) {
            return;
        }
        androidAutofillManager.f8628b.d(androidAutofillManager.d, layoutNode.f9689c, false);
    }

    @Override // androidx.compose.ui.node.Owner
    public final void J() {
        this.J = true;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x007b  */
    public final int Q(MotionEvent motionEvent) {
        int actionMasked;
        AndroidComposeView androidComposeView;
        removeCallbacks(this.E1);
        try {
            Z(motionEvent);
            this.i1 = true;
            c(false);
            Trace.beginSection("AndroidOwner:onTouch");
            try {
                int actionMasked2 = motionEvent.getActionMasked();
                MotionEvent motionEvent2 = this.y1;
                boolean z = motionEvent2 != null && motionEvent2.getToolType(0) == 3;
                PointerInputEventProcessor pointerInputEventProcessor = this.L;
                if (motionEvent2 != null) {
                    try {
                        if ((motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) ? false : true) {
                            if (motionEvent2.getButtonState() != 0 || (actionMasked = motionEvent2.getActionMasked()) == 0 || actionMasked == 2 || actionMasked == 6) {
                                pointerInputEventProcessor.b();
                            } else if (motionEvent2.getActionMasked() != 10 && z) {
                                c0(motionEvent2, 10, motionEvent2.getEventTime(), true);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        Trace.endSection();
                        throw th;
                    }
                }
                boolean z2 = motionEvent.getToolType(0) == 3;
                if (z || !z2 || actionMasked2 == 3 || actionMasked2 == 9 || !V(motionEvent)) {
                    androidComposeView = this;
                } else {
                    androidComposeView = this;
                    androidComposeView.c0(motionEvent, 9, motionEvent.getEventTime(), true);
                }
                if (motionEvent2 != 0) {
                    motionEvent2.recycle();
                }
                MotionEvent motionEvent3 = androidComposeView.y1;
                if (motionEvent3 != null && motionEvent3.getAction() == 10) {
                    MotionEvent motionEvent4 = androidComposeView.y1;
                    int pointerId = motionEvent4 != null ? motionEvent4.getPointerId(0) : -1;
                    int action = motionEvent.getAction();
                    MotionEventAdapter motionEventAdapter = androidComposeView.K;
                    if (action == 9 && motionEvent.getHistorySize() == 0) {
                        if (pointerId >= 0) {
                            motionEventAdapter.f9289c.delete(pointerId);
                            motionEventAdapter.f9288b.delete(pointerId);
                        }
                    } else if (motionEvent.getAction() == 0 && motionEvent.getHistorySize() == 0) {
                        MotionEvent motionEvent5 = androidComposeView.y1;
                        float x = motionEvent5 != null ? motionEvent5.getX() : Float.NaN;
                        MotionEvent motionEvent6 = androidComposeView.y1;
                        boolean z3 = (x == motionEvent.getX() && (motionEvent6 != null ? motionEvent6.getY() : Float.NaN) == motionEvent.getY()) ? false : true;
                        MotionEvent motionEvent7 = androidComposeView.y1;
                        boolean z4 = (motionEvent7 != null ? motionEvent7.getEventTime() : -1L) != motionEvent.getEventTime();
                        if (z3 || z4) {
                            if (pointerId >= 0) {
                                motionEventAdapter.f9289c.delete(pointerId);
                                motionEventAdapter.f9288b.delete(pointerId);
                            }
                            HitPathTracker hitPathTracker = pointerInputEventProcessor.f9353b;
                            if (hitPathTracker.d) {
                                hitPathTracker.d = true;
                            } else {
                                hitPathTracker.g.f9303a.j();
                            }
                        }
                    }
                }
                androidComposeView.y1 = MotionEvent.obtainNoHistory(motionEvent);
                int iB0 = b0(motionEvent);
                Trace.endSection();
                androidComposeView.i1 = false;
                return iB0;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            this.i1 = false;
            throw th3;
        }
    }

    public final void S(LayoutNode layoutNode) {
        this.b1.r(layoutNode, false);
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            S((LayoutNode) objArr[i3]);
        }
    }

    public final boolean V(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return Call.Parameters.DEFAULT_CAMERA_ZOOM <= x && x <= ((float) getWidth()) && Call.Parameters.DEFAULT_CAMERA_ZOOM <= y && y <= ((float) getHeight());
    }

    public final boolean W(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        return (motionEvent.getPointerCount() == 1 && (motionEvent2 = this.y1) != null && motionEvent2.getPointerCount() == motionEvent.getPointerCount() && motionEvent.getRawX() == motionEvent2.getRawX() && motionEvent.getRawY() == motionEvent2.getRawY()) ? false : true;
    }

    public final void X(OwnedLayer ownedLayer, boolean z) {
        boolean z2 = this.I;
        MutableObjectList mutableObjectList = this.G;
        if (!z) {
            if (z2) {
                return;
            }
            mutableObjectList.l(ownedLayer);
            MutableObjectList mutableObjectList2 = this.H;
            if (mutableObjectList2 != null) {
                mutableObjectList2.l(ownedLayer);
                return;
            }
            return;
        }
        if (!z2) {
            mutableObjectList.g(ownedLayer);
            return;
        }
        MutableObjectList mutableObjectList3 = this.H;
        if (mutableObjectList3 == null) {
            mutableObjectList3 = new MutableObjectList(0, 1, null);
            this.H = mutableObjectList3;
        }
        mutableObjectList3.g(ownedLayer);
    }

    public final void Y() {
        if (this.i1) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (jCurrentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = jCurrentAnimationTimeMillis;
            CalculateMatrixToWindowApi29 calculateMatrixToWindowApi29 = this.J1;
            float[] fArr = this.f1;
            calculateMatrixToWindowApi29.a(this, fArr);
            InvertMatrixKt.a(fArr, this.g1);
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            int[] iArr = this.d1;
            view.getLocationOnScreen(iArr);
            float f2 = iArr[0];
            float f3 = iArr[1];
            view.getLocationInWindow(iArr);
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2 - iArr[0])) << 32) | (((long) Float.floatToRawIntBits(f3 - iArr[1])) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            this.j1 = jFloatToRawIntBits;
        }
    }

    public final void Z(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        CalculateMatrixToWindowApi29 calculateMatrixToWindowApi29 = this.J1;
        float[] fArr = this.f1;
        calculateMatrixToWindowApi29.a(this, fArr);
        InvertMatrixKt.a(fArr, this.g1);
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(x)) << 32) | (((long) Float.floatToRawIntBits(y)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        long jB = Matrix.b(jFloatToRawIntBits, fArr);
        float rawX = motionEvent.getRawX() - Float.intBitsToFloat((int) (jB >> 32));
        float rawY = motionEvent.getRawY() - Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax));
        this.j1 = (((long) Float.floatToRawIntBits(rawX)) << 32) | (((long) Float.floatToRawIntBits(rawY)) & BodyPartID.bodyIdMax);
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public final void a() {
        if (isFocused() || hasFocus()) {
            clearFocus();
        } else if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus != null) {
                viewFindFocus.clearFocus();
            }
            clearFocus();
        }
    }

    public final void a0(LayoutNode layoutNode) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (layoutNode != null) {
            while (layoutNode != null && layoutNode.L() == LayoutNode.UsageByParent.InMeasureBlock) {
                if (!this.t0) {
                    LayoutNode layoutNodeO = layoutNode.O();
                    if (layoutNodeO == null) {
                        break;
                    }
                    long j2 = layoutNodeO.H.f9772c.f9550e;
                    if (Constraints.f(j2) && Constraints.e(j2)) {
                        break;
                    }
                }
                layoutNode = layoutNode.O();
            }
            if (layoutNode == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i2, int i3) {
        if (getFocusOwner().r()) {
            super.addFocusables(arrayList, i2, i3);
            if (getFocusOwner().o() || arrayList == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, i2, layoutParams, true);
    }

    @Override // android.view.View
    public final void autofill(SparseArray sparseArray) {
        Function1 function1;
        SemanticsConfiguration semanticsConfigurationI;
        Function1 function2;
        Function1 function3;
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = sparseArray.keyAt(i2);
                AutofillValue autofillValue = (AutofillValue) sparseArray.get(iKeyAt);
                SemanticsInfo semanticsInfo = (SemanticsInfo) androidAutofillManager.f8629c.f10329c.b(iKeyAt);
                if (semanticsInfo != null && (semanticsConfigurationI = semanticsInfo.i()) != null) {
                    AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsActions.g);
                    if (accessibilityAction != null && (function3 = (Function1) accessibilityAction.f10270b) != null) {
                    }
                    AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsActions.f10307h);
                    if (accessibilityAction2 != null && (function2 = (Function1) accessibilityAction2.f10270b) != null) {
                    }
                }
            }
        }
        AndroidAutofill androidAutofill = this.O;
        if (androidAutofill != null) {
            AutofillTree autofillTree = androidAutofill.f8626b;
            if (autofillTree.f8646a.isEmpty()) {
                return;
            }
            int size2 = sparseArray.size();
            for (int i3 = 0; i3 < size2; i3++) {
                int iKeyAt2 = sparseArray.keyAt(i3);
                AutofillValue autofillValue2 = (AutofillValue) sparseArray.get(iKeyAt2);
                if (autofillValue2.isText()) {
                    String string = autofillValue2.getTextValue().toString();
                    AutofillNode autofillNode = (AutofillNode) autofillTree.f8646a.get(Integer.valueOf(iKeyAt2));
                    if (autofillNode != null && (function1 = autofillNode.f8645c) != null) {
                        function1.invoke(string);
                    }
                } else {
                    if (autofillValue2.isDate()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
                    }
                    if (autofillValue2.isList()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                    }
                    if (autofillValue2.isToggle()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public final boolean b() {
        if (isFocused()) {
            return true;
        }
        return super.requestFocus(130, null);
    }

    public final int b0(MotionEvent motionEvent) {
        Object obj;
        if (this.K1) {
            this.K1 = false;
            LazyWindowInfo lazyWindowInfo = getComposeViewContext().s;
            int metaState = motionEvent.getMetaState();
            lazyWindowInfo.getClass();
            WindowInfoImpl.d.getClass();
            ((SnapshotMutableStateImpl) WindowInfoImpl.f10177e).setValue(new PointerKeyboardModifiers(metaState));
        }
        MotionEventAdapter motionEventAdapter = this.K;
        PointerInputEvent pointerInputEventD = motionEventAdapter.d(motionEvent, this);
        int actionMasked = motionEvent.getActionMasked();
        PointerInputEventProcessor pointerInputEventProcessor = this.L;
        if (pointerInputEventD == null) {
            pointerInputEventProcessor.b();
            return 0;
        }
        List list = pointerInputEventD.f9341a;
        int size = list.size() - 1;
        if (size < 0) {
            obj = null;
            break;
        }
        while (true) {
            int i2 = size - 1;
            obj = list.get(size);
            if (((PointerInputEventData) obj).f9346e && (actionMasked == 0 || actionMasked == 5)) {
                break;
            }
            if (i2 < 0) {
                obj = null;
                break;
            }
            size = i2;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData != null) {
            this.f9864c = pointerInputEventData.d;
        }
        int iA = pointerInputEventProcessor.a(pointerInputEventD, this, V(motionEvent));
        pointerInputEventD.f9342b = null;
        if ((actionMasked != 0 && actionMasked != 5) || (iA & 1) != 0) {
            return iA;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        motionEventAdapter.f9289c.delete(pointerId);
        motionEventAdapter.f9288b.delete(pointerId);
        return iA;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void c(boolean z) {
        Function0 function0;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        if (measureAndLayoutDelegate.f9744b.c() || measureAndLayoutDelegate.f9746e.f9809a.d != 0) {
            Trace.beginSection("AndroidOwner:measureAndLayout");
            if (z) {
                try {
                    function0 = this.I1;
                } finally {
                    Trace.endSection();
                }
            } else {
                function0 = null;
            }
            if (measureAndLayoutDelegate.l(function0)) {
                requestLayout();
            }
            measureAndLayoutDelegate.b(false);
            getRectManager().a();
            if (this.J) {
                getViewTreeObserver().dispatchOnGlobalLayout();
                this.J = false;
            }
        }
    }

    public final void c0(MotionEvent motionEvent, int i2, long j2, boolean z) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                actionIndex = motionEvent.getActionIndex();
            }
        } else if (i2 != 9 && i2 != 10) {
            actionIndex = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (actionIndex >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i3 = 0; i3 < pointerCount; i3++) {
            pointerPropertiesArr[i3] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i4 = 0; i4 < pointerCount; i4++) {
            pointerCoordsArr[i4] = new MotionEvent.PointerCoords();
        }
        int i5 = 0;
        while (i5 < pointerCount) {
            int i6 = ((actionIndex < 0 || i5 < actionIndex) ? 0 : 1) + i5;
            motionEvent.getPointerProperties(i6, pointerPropertiesArr[i5]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i5];
            motionEvent.getPointerCoords(i6, pointerCoords);
            float f2 = pointerCoords.x;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(pointerCoords.y)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f2)) << 32);
            Offset.Companion companion = Offset.f8806b;
            long jH = h(jFloatToRawIntBits);
            pointerCoords.x = Float.intBitsToFloat((int) (jH >> 32));
            pointerCoords.y = Float.intBitsToFloat((int) (jH & BodyPartID.bodyIdMax));
            i5++;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? j2 : motionEvent.getDownTime(), j2, i2, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), z ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        PointerInputEvent pointerInputEventD = this.K.d(motionEventObtain, this);
        pointerInputEventD.getClass();
        this.L.a(pointerInputEventD, this, true);
        motionEventObtain.recycle();
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i2) {
        return this.B.m(this.f9864c, i2, false);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i2) {
        return this.B.m(this.f9864c, i2, true);
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public final boolean d(int i2) {
        FocusDirection.f8731b.getClass();
        if (i2 != FocusDirection.f8736i && i2 != FocusDirection.f8737j) {
            Integer numC = FocusInteropUtils_androidKt.c(i2);
            if (numC == null) {
                throw defpackage.a.s("Invalid focus direction");
            }
            int iIntValue = numC.intValue();
            FocusTargetNode focusTargetNodeG = getFocusOwner().g();
            if (focusTargetNodeG == null) {
                md.k("findNextViewInEmbeddedView called when owner does not have anything focused.");
                return false;
            }
            Integer numC2 = FocusInteropUtils_androidKt.c(i2);
            if (numC2 == null) {
                throw defpackage.a.s("Invalid focus direction");
            }
            int iIntValue2 = numC2.intValue();
            AndroidViewHolder androidViewHolder = DelegatableNodeKt.f(focusTargetNodeG).q;
            View interopView = androidViewHolder != null ? androidViewHolder.getView() : null;
            View viewFindFocus = findFocus();
            FocusFinder focusFinder = FocusFinder.getInstance();
            View rootView = getRootView();
            rootView.getClass();
            View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, viewFindFocus, iIntValue2);
            if (viewFindNextFocus == null || interopView == null || !AndroidComposeView_androidKt.a(interopView, viewFindNextFocus)) {
                viewFindNextFocus = null;
            }
            if (viewFindNextFocus != null) {
                return FocusInteropUtils_androidKt.b(viewFindNextFocus, Integer.valueOf(iIntValue), null);
            }
        }
        return false;
    }

    public final void d0(Configuration configuration) {
        Configuration configuration2 = getConfiguration();
        if (Intrinsics.c(configuration2, configuration)) {
            return;
        }
        setConfiguration(new Configuration(configuration));
        if (configuration2.fontScale != configuration.fontScale || configuration2.densityDpi != configuration.densityDpi) {
            setDensity(AndroidDensity_androidKt.a(getContext()));
        }
        Function1 function1 = AndroidComposeView_androidKt.f9933a;
        if ((configuration2.diff(configuration) & (-1342235264)) != 0) {
            this.q.getClass();
        }
    }

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
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MutableObjectList mutableObjectList = this.G;
        if (!isAttachedToWindow()) {
            R(getRoot());
        }
        c(true);
        Snapshot.f8462e.getClass();
        SnapshotKt.i().m();
        this.I = true;
        try {
            Trace.beginSection("AndroidOwner:draw");
            try {
                CanvasHolder canvasHolder = this.t;
                AndroidCanvas androidCanvas = canvasHolder.f8863a;
                Canvas canvas2 = androidCanvas.f8823a;
                androidCanvas.f8823a = canvas;
                getRoot().D(androidCanvas, null);
                canvasHolder.f8863a.f8823a = canvas2;
                if (mutableObjectList.e()) {
                    int i2 = mutableObjectList.f3346b;
                    for (int i3 = 0; i3 < i2; i3++) {
                        ((OwnedLayer) mutableObjectList.b(i3)).k();
                    }
                }
                ViewLayer.s.getClass();
                if (ViewLayer.y) {
                    int iSave = canvas.save();
                    canvas.clipRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    super.dispatchDraw(canvas);
                    canvas.restoreToCount(iSave);
                }
                mutableObjectList.k();
                this.I = false;
                Trace.endSection();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = this.uncaughtExceptionHandler;
            if (uncaughtExceptionHandler == null) {
                throw th2;
            }
            uncaughtExceptionHandler.a();
        }
        MutableObjectList mutableObjectList2 = this.H;
        if (mutableObjectList2 != null) {
            mutableObjectList.h(mutableObjectList2);
            mutableObjectList2.k();
        }
        if (T()) {
            Api35Impl.a(this, this.C1);
            View view = this.m;
            if (view != null) {
                Api35Impl.a(view, this.D1);
                if (!Float.isNaN(this.D1)) {
                    view.invalidate();
                    drawChild(canvas, view, getDrawingTime());
                }
            }
            this.C1 = Float.NaN;
            this.D1 = Float.NaN;
        }
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(final MotionEvent motionEvent) {
        if (this.G1) {
            n5 n5Var = this.F1;
            removeCallbacks(n5Var);
            if (motionEvent.getActionMasked() == 8) {
                this.G1 = false;
            } else {
                n5Var.run();
            }
        }
        if (U(motionEvent) || !isAttachedToWindow()) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        if (motionEvent.getActionMasked() == 8) {
            if (!motionEvent.isFromSource(4194304)) {
                return (Q(motionEvent) & 4) != 0;
            }
            android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
            float f2 = -motionEvent.getAxisValue(26);
            getContext();
            float scaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor() * f2;
            getContext();
            return getFocusOwner().l(new RotaryScrollEvent(scaledVerticalScrollFactor, viewConfiguration.getScaledHorizontalScrollFactor() * f2, motionEvent.getEventTime(), motionEvent.getDeviceId()), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$handleRotaryEvent$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return Boolean.valueOf(super/*android.view.View*/.dispatchGenericMotionEvent(motionEvent));
                }
            });
        }
        if (!motionEvent.isFromSource(PKIFailureInfo.badSenderNonce)) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        AndroidIndirectPointerEvent androidIndirectPointerEventC = this.K.c(motionEvent, this.primaryDirectionalMotionAxisOverride);
        IndirectPointerNavigationGestureDetector indirectPointerNavigationGestureDetector = this.H1;
        if (androidIndirectPointerEventC == null) {
            getFocusOwner().m();
            indirectPointerNavigationGestureDetector.getClass();
            IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
            indirectPointerNavigationGestureDetector.f10089b = 0;
            indirectPointerNavigationGestureDetector.f10090c = true;
            return true;
        }
        boolean zW = getFocusOwner().w(androidIndirectPointerEventC);
        indirectPointerNavigationGestureDetector.getClass();
        MotionEvent motionEvent2 = androidIndirectPointerEventC.f9212c;
        int action = motionEvent2.getAction();
        if (action == 0) {
            indirectPointerNavigationGestureDetector.f10089b = androidIndirectPointerEventC.f9211b;
            indirectPointerNavigationGestureDetector.f10090c = false;
        } else if ((action == 1 || action == 2) && zW) {
            IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
            indirectPointerNavigationGestureDetector.f10089b = 0;
            indirectPointerNavigationGestureDetector.f10090c = true;
        }
        indirectPointerNavigationGestureDetector.d.onTouchEvent(motionEvent2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i2;
        boolean z = this.G1;
        n5 n5Var = this.F1;
        if (z) {
            removeCallbacks(n5Var);
            n5Var.run();
        }
        if (U(motionEvent) || !isAttachedToWindow()) {
            return false;
        }
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.B;
        AndroidComposeView androidComposeView = androidComposeViewAccessibilityDelegateCompat.f9899e;
        android.view.accessibility.AccessibilityManager accessibilityManager = androidComposeViewAccessibilityDelegateCompat.f9901h;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                androidComposeView.c(true);
                HitTestResult hitTestResult = new HitTestResult();
                LayoutNode root = androidComposeView.getRoot();
                long jFloatToRawIntBits = Float.floatToRawIntBits(x);
                long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(y)) & BodyPartID.bodyIdMax;
                Offset.Companion companion = Offset.f8806b;
                LayoutNode.Companion companion2 = LayoutNode.T;
                PointerType.f9367b.getClass();
                root.T(jFloatToRawIntBits2 | (jFloatToRawIntBits << 32), hitTestResult, true);
                MutableObjectList mutableObjectList = hitTestResult.f9667b;
                int i3 = mutableObjectList.f3346b - 1;
                while (true) {
                    if (-1 < i3) {
                        Object objB = mutableObjectList.b(i3);
                        objB.getClass();
                        LayoutNode layoutNodeF = DelegatableNodeKt.f((Modifier.Node) objB);
                        if (androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(layoutNodeF) == null) {
                            if (layoutNodeF.H.d(8)) {
                                int iA = androidComposeViewAccessibilityDelegateCompat.A(layoutNodeF.f9689c);
                                SemanticsNode semanticsNodeA = SemanticsNodeKt.a(layoutNodeF, false);
                                if (SemanticsOwnerKt.f(semanticsNodeA)) {
                                    if (!semanticsNodeA.k().f10312b.c(SemanticsProperties.B)) {
                                        i2 = iA;
                                        break;
                                    }
                                } else {
                                    continue;
                                }
                            }
                            i3--;
                        }
                    }
                    i2 = Integer.MIN_VALUE;
                    break;
                }
                androidComposeView.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
                int i4 = androidComposeViewAccessibilityDelegateCompat.f9900f;
                if (i4 != i2) {
                    androidComposeViewAccessibilityDelegateCompat.f9900f = i2;
                    AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i2, 128, null, 12);
                    AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i4, 256, null, 12);
                }
            } else if (action == 10) {
                int i5 = androidComposeViewAccessibilityDelegateCompat.f9900f;
                if (i5 == Integer.MIN_VALUE) {
                    androidComposeView.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
                } else if (i5 != Integer.MIN_VALUE) {
                    androidComposeViewAccessibilityDelegateCompat.f9900f = Integer.MIN_VALUE;
                    AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, Integer.MIN_VALUE, 128, null, 12);
                    AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i5, 256, null, 12);
                }
            }
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10 && V(motionEvent)) {
                if (motionEvent.getToolType(0) == 3 && motionEvent.getButtonState() != 0) {
                    return false;
                }
                MotionEvent motionEvent2 = this.y1;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
                this.y1 = MotionEvent.obtainNoHistory(motionEvent);
                this.G1 = true;
                postDelayed(n5Var, 8L);
                return false;
            }
        } else if (!W(motionEvent)) {
            return false;
        }
        return (Q(motionEvent) & 1) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        if (!isFocused()) {
            return getFocusOwner().k(keyEvent, new Function0<Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView.dispatchKeyEvent.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return Boolean.valueOf(AndroidComposeView.super.dispatchKeyEvent(keyEvent));
                }
            });
        }
        LazyWindowInfo lazyWindowInfo = getComposeViewContext().s;
        int metaState = keyEvent.getMetaState();
        lazyWindowInfo.getClass();
        WindowInfoImpl.d.getClass();
        ((SnapshotMutableStateImpl) WindowInfoImpl.f10177e).setValue(new PointerKeyboardModifiers(metaState));
        return getFocusOwner().k(keyEvent, FocusOwner$dispatchKeyEvent$1.f8746c) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        return (isFocused() && getFocusOwner().f(keyEvent)) || super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Object autoClearFocusBehavior;
        FocusTargetNode focusTargetNodeG;
        if (this.G1) {
            n5 n5Var = this.F1;
            removeCallbacks(n5Var);
            MotionEvent motionEvent2 = this.y1;
            motionEvent2.getClass();
            if (motionEvent.getActionMasked() == 0 && motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
                this.G1 = false;
            } else {
                n5Var.run();
            }
        }
        if (!U(motionEvent) && isAttachedToWindow() && (motionEvent.getActionMasked() != 2 || W(motionEvent))) {
            int iQ = Q(motionEvent);
            if ((iQ & 2) != 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            boolean z = motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5;
            boolean z2 = motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584);
            if (z && z2) {
                Object parent = getParent();
                View view = parent instanceof View ? (View) parent : null;
                if (view == null || (autoClearFocusBehavior = view.getTag(R.id.auto_clear_focus_behavior_tag)) == null) {
                    AutoClearFocusBehavior.f9979b.getClass();
                    autoClearFocusBehavior = new AutoClearFocusBehavior(AutoClearFocusBehavior.f9980c);
                }
                AutoClearFocusBehavior.f9979b.getClass();
                if (autoClearFocusBehavior.equals(new AutoClearFocusBehavior(AutoClearFocusBehavior.f9980c)) && (focusTargetNodeG = getFocusOwner().g()) != null) {
                    NodeCoordinator nodeCoordinatorE = DelegatableNodeKt.e(focusTargetNodeG);
                    androidx.compose.ui.geometry.Rect rectL = LayoutCoordinatesKt.c(nodeCoordinatorE).L(nodeCoordinatorE, true);
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(motionEvent.getX())) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getY())) & BodyPartID.bodyIdMax);
                    Offset.Companion companion = Offset.f8806b;
                    if (!rectL.a(jFloatToRawIntBits)) {
                        getFocusOwner().z(false);
                    }
                }
            }
            if ((iQ & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void e(LayoutNode layoutNode, boolean z, boolean z2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        if (!z) {
            measureAndLayoutDelegate.getClass();
            int i2 = MeasureAndLayoutDelegate.WhenMappings.f9754a[layoutNodeLayoutDelegate.d.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                return;
            }
            if (i2 != 5) {
                v40.g();
                return;
            }
            LayoutNode layoutNodeO = layoutNode.O();
            boolean z3 = layoutNodeO == null || layoutNodeO.A();
            if (!z2) {
                if (layoutNode.K()) {
                    return;
                }
                if (layoutNode.J() && layoutNode.A() == z3 && layoutNode.A() == layoutNodeLayoutDelegate.p.v) {
                    return;
                }
            }
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
            measurePassDelegate.x = true;
            measurePassDelegate.y = true;
            if (!layoutNode.S && measurePassDelegate.v && z3) {
                if ((layoutNodeO == null || !layoutNodeO.J()) && (layoutNodeO == null || !layoutNodeO.K())) {
                    measureAndLayoutDelegate.f9744b.a(layoutNode, Invalidation.Placement);
                }
                if (measureAndLayoutDelegate.d) {
                    return;
                }
                a0(null);
                return;
            }
            return;
        }
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.f9744b;
        int i3 = MeasureAndLayoutDelegate.WhenMappings.f9754a[layoutNodeLayoutDelegate.d.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 == 3) {
                    return;
                }
                if (i3 != 4 && i3 != 5) {
                    v40.g();
                    return;
                }
            }
            if ((layoutNodeLayoutDelegate.f9709e || layoutNodeLayoutDelegate.f9710f) && !z2) {
                return;
            }
            layoutNodeLayoutDelegate.f9710f = true;
            layoutNodeLayoutDelegate.g = true;
            MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.p;
            measurePassDelegate2.x = true;
            measurePassDelegate2.y = true;
            if (layoutNode.S) {
                return;
            }
            LayoutNode layoutNodeO2 = layoutNode.O();
            if (Intrinsics.c(layoutNode.a0(), Boolean.TRUE) && ((layoutNodeO2 == null || !layoutNodeO2.I.f9709e) && (layoutNodeO2 == null || !layoutNodeO2.I.f9710f))) {
                depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.LookaheadPlacement);
            } else if (layoutNode.A() && ((layoutNodeO2 == null || !layoutNodeO2.J()) && (layoutNodeO2 == null || !layoutNodeO2.K()))) {
                depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.Placement);
            }
            if (measureAndLayoutDelegate.d) {
                return;
            }
            a0(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0058  */
    public final void e0() {
        boolean z;
        int i2;
        int[] iArr = this.d1;
        getLocationOnScreen(iArr);
        long j2 = this.c1;
        IntOffset.Companion companion = IntOffset.f11012b;
        int i3 = (int) (j2 >> 32);
        int i4 = (int) (j2 & BodyPartID.bodyIdMax);
        int i5 = iArr[0];
        if (i3 == i5 && i4 == iArr[1] && this.lastMatrixRecalculationAnimationTime >= 0) {
            z = false;
        } else {
            this.c1 = (BodyPartID.bodyIdMax & ((long) iArr[1])) | (((long) i5) << 32);
            if (i3 == Integer.MAX_VALUE || i4 == Integer.MAX_VALUE) {
                z = false;
            } else {
                MutableVector mutableVectorR = getRoot().R();
                Object[] objArr = mutableVectorR.f8165b;
                int i6 = mutableVectorR.d;
                for (int i7 = 0; i7 < i6; i7++) {
                    ((LayoutNode) objArr[i7]).I.p.L0();
                }
                z = true;
            }
        }
        Y();
        View rootView = this.N1;
        if (rootView == null) {
            rootView = getRootView();
            this.N1 = rootView;
        }
        RectManager rectManager = getRectManager();
        long j3 = this.c1;
        long jB = IntOffsetKt.b(this.j1);
        int width = rootView.getWidth();
        int height = rootView.getHeight();
        rectManager.getClass();
        float[] fArr = this.f1;
        if (fArr.length < 16) {
            i2 = 0;
        } else {
            i2 = (((fArr[0] == 1.0f && fArr[1] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[2] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[4] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[5] == 1.0f && fArr[6] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[8] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[9] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[10] == 1.0f) ? 1 : 0) << 1) | ((fArr[12] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[13] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[14] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[15] == 1.0f) ? 1 : 0);
        }
        ThrottledCallbacks throttledCallbacks = rectManager.f10386c;
        if ((i2 & 2) != 0) {
            fArr = null;
        }
        rectManager.f10388f = throttledCallbacks.c(j3, jB, fArr, width, height) || rectManager.f10388f;
        this.b1.b(z);
        getRectManager().a();
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    public final long f(long j2) {
        Y();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) - Float.intBitsToFloat((int) (this.j1 >> 32));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (this.j1 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        Offset.Companion companion = Offset.f8806b;
        return Matrix.b(jFloatToRawIntBits, this.g1);
    }

    public final View findViewByAccessibilityIdTraversal(int accessibilityId) throws IllegalAccessException, InvocationTargetException {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(this, Integer.valueOf(accessibilityId));
            if (objInvoke instanceof View) {
                return (View) objInvoke;
            }
        } catch (NoSuchMethodException unused) {
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i2) {
        androidx.compose.ui.geometry.Rect rectA;
        int i3;
        if (view == null || this.b1.f9745c) {
            return super.focusSearch(view, i2);
        }
        View rootView = getRootView();
        rootView.getClass();
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) rootView, view, i2);
        if (viewFindNextFocus == null || !AndroidComposeView_androidKt.a(this, viewFindNextFocus)) {
            viewFindNextFocus = null;
        }
        if (view != this || (rectA = getFocusOwner().t()) == null) {
            rectA = FocusInteropUtils_androidKt.a(view, this);
        }
        FocusDirection focusDirectionD = FocusInteropUtils_androidKt.d(i2);
        if (focusDirectionD != null) {
            i3 = focusDirectionD.f8738a;
        } else {
            FocusDirection.f8731b.getClass();
            i3 = FocusDirection.f8735h;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (getFocusOwner().A(i3, rectA, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$focusSearch$searchResult$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ref$ObjectRef.f71921b = (FocusTargetNode) obj;
                return Boolean.TRUE;
            }
        }) == null) {
            return view;
        }
        if (ref$ObjectRef.f71921b == null) {
            if (viewFindNextFocus == null) {
                return super.focusSearch(view, i2);
            }
        } else if (viewFindNextFocus == null || FocusOwnerImplKt.a(i3) || TwoDimensionalFocusSearchKt.g(FocusTraversalKt.b((FocusTargetNode) ref$ObjectRef.f71921b), FocusInteropUtils_androidKt.a(viewFindNextFocus, this), rectA, i3)) {
            return this;
        }
        return viewFindNextFocus;
    }

    @Override // androidx.compose.ui.node.Owner
    public final long g(long j2) {
        Y();
        return Matrix.b(j2, this.f1);
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui() {
        if (this.W == null) {
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(getContext());
            this.W = androidViewsHandler;
            addView(androidViewsHandler, -1);
            requestLayout();
        }
        AndroidViewsHandler androidViewsHandler2 = this.W;
        androidViewsHandler2.getClass();
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.Owner
    public Autofill getAutofill() {
        return this.O;
    }

    @Override // androidx.compose.ui.node.Owner
    public androidx.compose.ui.autofill.AutofillManager getAutofillManager() {
        return this._autofillManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    public final ComposeViewContext getComposeViewContext() {
        return get_composeViewContext();
    }

    /* JADX INFO: renamed from: getComposeViewContextIncrementedDuringInit$ui, reason: from getter */
    public final boolean getComposeViewContextIncrementedDuringInit() {
        return this.composeViewContextIncrementedDuringInit;
    }

    public final Configuration getConfiguration() {
        return (Configuration) ((SnapshotMutableStateImpl) this.configuration).getF10755b();
    }

    /* JADX INFO: renamed from: getContentCaptureManager$ui, reason: from getter */
    public final AndroidContentCaptureManager getContentCaptureManager() {
        return this.contentCaptureManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.compose.ui.node.Owner
    public Density getDensity() {
        return (Density) ((SnapshotMutableStateImpl) this.density).getF10755b();
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public androidx.compose.ui.geometry.Rect getEmbeddedViewFocusRect() {
        if (isFocused()) {
            return getFocusOwner().t();
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus != null) {
            return FocusInteropUtils_androidKt.a(viewFindFocus, this);
        }
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public FocusOwner getFocusOwner() {
        return this.n;
    }

    @Override // android.view.View
    public final void getFocusedRect(Rect rect) {
        androidx.compose.ui.geometry.Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
        if (embeddedViewFocusRect != null) {
            rect.left = Math.round(embeddedViewFocusRect.f8811a);
            rect.top = Math.round(embeddedViewFocusRect.f8812b);
            rect.right = Math.round(embeddedViewFocusRect.f8813c);
            rect.bottom = Math.round(embeddedViewFocusRect.d);
            return;
        }
        FocusOwner focusOwner = getFocusOwner();
        FocusDirection.f8731b.getClass();
        if (Intrinsics.c(focusOwner.A(FocusDirection.f8735h, null, C03481.f9882c), Boolean.TRUE)) {
            super.getFocusedRect(rect);
        } else {
            rect.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.fontFamilyResolver.getF10755b();
    }

    @Override // androidx.compose.ui.node.Owner
    public Font.ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    /* JADX INFO: renamed from: getFrameEndScheduler$ui, reason: from getter */
    public final LifecycleRetainedValuesStoreOwner.FrameEndScheduler getFrameEndScheduler() {
        return this.frameEndScheduler;
    }

    @Override // androidx.compose.ui.node.Owner
    public GraphicsContext getGraphicsContext() {
        return this.graphicsContext;
    }

    @Override // androidx.compose.ui.node.Owner
    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public boolean getHasPendingMeasureOrLayout() {
        return this.b1.f9744b.c() || !this.f9869j.isEmpty();
    }

    @Override // android.view.View
    public int getImportantForAutofill() {
        return 1;
    }

    @Override // androidx.compose.ui.node.Owner
    public InputModeManager getInputModeManager() {
        return this.v1;
    }

    public final InsetsListener getInsetsListener() {
        return this.insetsListener;
    }

    /* JADX INFO: renamed from: getLastMatrixRecalculationAnimationTime$ui, reason: from getter */
    public final long getLastMatrixRecalculationAnimationTime() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) ((SnapshotMutableStateImpl) this.layoutDirection).getF10755b();
    }

    @Override // androidx.compose.ui.node.Owner
    public LocaleList getLocaleList() {
        return (LocaleList) this.localeList.getF10755b();
    }

    public long getMeasureIteration() {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        if (!measureAndLayoutDelegate.f9745c) {
            InlineClassHelperKt.a("measureIteration should be only used during the measure/layout pass");
        }
        return measureAndLayoutDelegate.g;
    }

    @Override // androidx.compose.ui.node.Owner
    public ModifierLocalManager getModifierLocalManager() {
        return this.modifierLocalManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidComposeView getOutOfFrameExecutor() {
        if (isAttachedToWindow()) {
            return this;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public Placeable.PlacementScope getPlacementScope() {
        return PlaceableKt.b(this);
    }

    @Override // androidx.compose.ui.node.Owner
    public PointerIconService getPointerIconService() {
        return this.O1;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui, reason: not valid java name and from getter */
    public final IndirectPointerEventPrimaryDirectionalMotionAxis getPrimaryDirectionalMotionAxisOverride() {
        return this.primaryDirectionalMotionAxisOverride;
    }

    @Override // androidx.compose.ui.node.Owner
    public RectManager getRectManager() {
        return this.rectManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public RetainedValuesStore getRetainedValuesStore() {
        return this.retainedValuesStore;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNode getRoot() {
        return this.root;
    }

    public RootForTest getRootForTest() {
        return this;
    }

    public final boolean getScrollCaptureInProgress$ui() {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.M1) == null) {
            return false;
        }
        return ((Boolean) ((SnapshotMutableStateImpl) scrollCapture.f10263a).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNodeDrawScope getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        return Build.VERSION.SDK_INT >= 30 ? Api30Impl.f9978a.a(this) : this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.Owner
    public SoftwareKeyboardController getSoftwareKeyboardController() {
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController = this.q1;
        if (delegatingSoftwareKeyboardController != null) {
            return delegatingSoftwareKeyboardController;
        }
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController2 = new DelegatingSoftwareKeyboardController(getTextInputService());
        this.q1 = delegatingSoftwareKeyboardController2;
        return delegatingSoftwareKeyboardController2;
    }

    @Override // androidx.compose.ui.node.Owner
    public TextInputService getTextInputService() {
        TextInputService textInputService = this.o1;
        if (textInputService != null) {
            return textInputService;
        }
        Function1 function1 = AndroidComposeView_androidKt.f9933a;
        TextInputServiceAndroid legacyTextInputServiceAndroid = getLegacyTextInputServiceAndroid();
        ((AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1) function1).getClass();
        TextInputService textInputService2 = new TextInputService(legacyTextInputServiceAndroid);
        this.o1 = textInputService2;
        return textInputService2;
    }

    @Override // androidx.compose.ui.node.Owner
    public TextToolbar getTextToolbar() {
        return this.x1;
    }

    /* JADX INFO: renamed from: getUncaughtExceptionHandler$ui, reason: from getter */
    public final RootForTest.UncaughtExceptionHandler getUncaughtExceptionHandler() {
        return this.uncaughtExceptionHandler;
    }

    public View getView() {
        return this;
    }

    @Override // androidx.compose.ui.node.Owner
    public ViewConfiguration getViewConfiguration() {
        return this.u;
    }

    public final ViewTreeOwners getViewTreeOwners() {
        return (ViewTreeOwners) this.viewTreeOwners.getF10755b();
    }

    @Override // androidx.compose.ui.node.Owner
    public WindowInfo getWindowInfo() {
        return getComposeViewContext().s;
    }

    /* JADX INFO: renamed from: get_autofillManager$ui, reason: from getter */
    public final AndroidAutofillManager get_autofillManager() {
        return this._autofillManager;
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    public final long h(long j2) {
        Y();
        long jB = Matrix.b(j2, this.f1);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.j1 >> 32)) + Float.intBitsToFloat((int) (jB >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.j1 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void i(LayoutNode layoutNode) {
        OnPositionedDispatcher onPositionedDispatcher = this.b1.f9746e;
        onPositionedDispatcher.getClass();
        if (layoutNode.R > 0) {
            onPositionedDispatcher.f9809a.b(layoutNode);
            layoutNode.Q = true;
        }
        a0(null);
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public final void j(Object obj) {
        Runnable runnable = obj instanceof Runnable ? (Runnable) obj : null;
        if (runnable == null) {
            return;
        }
        removeCallbacks(runnable);
    }

    @Override // androidx.compose.ui.node.Owner
    public final void k(LayoutNode layoutNode) {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.B;
        androidComposeViewAccessibilityDelegateCompat.y = true;
        if (androidComposeViewAccessibilityDelegateCompat.v()) {
            androidComposeViewAccessibilityDelegateCompat.w(layoutNode);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.f8665h = true;
        if (androidContentCaptureManager.e()) {
            androidContentCaptureManager.f8666i.b(Unit.f71739a);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void l(LayoutNode layoutNode, boolean z) {
        this.b1.g(layoutNode, z);
    }

    @Override // androidx.compose.ui.node.Owner
    public final void m() {
        invalidate();
    }

    @Override // androidx.compose.ui.node.Owner
    public final void n(LayoutNode layoutNode) {
        SemanticsConfiguration semanticsConfigurationI;
        try {
            AndroidAutofillManager androidAutofillManager = this._autofillManager;
            if (androidAutofillManager != null && (semanticsConfigurationI = layoutNode.i()) != null && semanticsConfigurationI.f10312b.b(SemanticsProperties.r)) {
                androidAutofillManager.f8633i.b(layoutNode.f9689c);
                androidAutofillManager.f8628b.d(androidAutofillManager.d, layoutNode.f9689c, true);
            }
        } finally {
            UserInteractionsApi.a(layoutNode, this);
        }
    }

    @Override // androidx.compose.ui.input.pointer.MatrixPositionCalculator
    public final void o(float[] fArr) {
        Y();
        Matrix.e(fArr, this.f1);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.j1 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.j1 & BodyPartID.bodyIdMax));
        Function1 function1 = AndroidComposeView_androidKt.f9933a;
        float[] fArr2 = this.e1;
        Matrix.d(fArr2);
        Matrix.f(fIntBitsToFloat, fIntBitsToFloat2, fArr2);
        float fB = AndroidComposeView_androidKt.b(0, fArr2, fArr, 0);
        float fB2 = AndroidComposeView_androidKt.b(0, fArr2, fArr, 1);
        float fB3 = AndroidComposeView_androidKt.b(0, fArr2, fArr, 2);
        float fB4 = AndroidComposeView_androidKt.b(0, fArr2, fArr, 3);
        float fB5 = AndroidComposeView_androidKt.b(1, fArr2, fArr, 0);
        float fB6 = AndroidComposeView_androidKt.b(1, fArr2, fArr, 1);
        float fB7 = AndroidComposeView_androidKt.b(1, fArr2, fArr, 2);
        float fB8 = AndroidComposeView_androidKt.b(1, fArr2, fArr, 3);
        float fB9 = AndroidComposeView_androidKt.b(2, fArr2, fArr, 0);
        float fB10 = AndroidComposeView_androidKt.b(2, fArr2, fArr, 1);
        float fB11 = AndroidComposeView_androidKt.b(2, fArr2, fArr, 2);
        float fB12 = AndroidComposeView_androidKt.b(2, fArr2, fArr, 3);
        float fB13 = AndroidComposeView_androidKt.b(3, fArr2, fArr, 0);
        float fB14 = AndroidComposeView_androidKt.b(3, fArr2, fArr, 1);
        float fB15 = AndroidComposeView_androidKt.b(3, fArr2, fArr, 2);
        float fB16 = AndroidComposeView_androidKt.b(3, fArr2, fArr, 3);
        fArr[0] = fB;
        fArr[1] = fB2;
        fArr[2] = fB3;
        fArr[3] = fB4;
        fArr[4] = fB5;
        fArr[5] = fB6;
        fArr[6] = fB7;
        fArr[7] = fB8;
        fArr[8] = fB9;
        fArr[9] = fB10;
        fArr[10] = fB11;
        fArr[11] = fB12;
        fArr[12] = fB13;
        fArr[13] = fB14;
        fArr[14] = fB15;
        fArr[15] = fB16;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        RetainedValuesStore retainedValuesStore;
        int i2;
        Object obj;
        super.onAttachedToWindow();
        int i3 = 1;
        setAttached(true);
        if (Build.VERSION.SDK_INT < 30) {
            P1.getClass();
            setShowLayoutBounds(Companion.a());
        }
        this.insetsListener.onViewAttachedToWindow(this);
        P1.getClass();
        int i4 = 0;
        if (U1 == null) {
            e5 e5Var = new e5(i3);
            U1 = e5Var;
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            try {
                if (Q1 == null) {
                    Q1 = Class.forName("android.os.SystemProperties");
                }
                if (S1 == null) {
                    StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                    Class cls = Q1;
                    S1 = cls != null ? cls.getDeclaredMethod("addChangeCallback", Runnable.class) : null;
                }
                Method method = S1;
                if (method != null) {
                    method.invoke(null, e5Var);
                }
            } catch (Throwable unused) {
            }
            StrictMode.setVmPolicy(vmPolicy);
        }
        MutableObjectList mutableObjectList = T1;
        synchronized (mutableObjectList) {
            mutableObjectList.g(this);
        }
        if (!this.composeViewContextIncrementedDuringInit) {
            getComposeViewContext().c();
        }
        this.composeViewContextIncrementedDuringInit = false;
        S(getRoot());
        R(getRoot());
        SnapshotStateObserver snapshotStateObserver = getSnapshotObserver().f9812a;
        snapshotStateObserver.getClass();
        Snapshot.Companion companion = Snapshot.f8462e;
        ll0 ll0Var = snapshotStateObserver.d;
        companion.getClass();
        snapshotStateObserver.f8503h = Snapshot.Companion.d(ll0Var);
        AndroidAutofill androidAutofill = this.O;
        if (androidAutofill != null) {
            AutofillCallback autofillCallback = AutofillCallback.f8642a;
            autofillCallback.getClass();
            androidAutofill.f8627c.registerCallback(autofillCallback);
        }
        LifecycleOwner lifecycleOwner = getComposeViewContext().f10011c;
        ViewModelStoreOwner viewModelStoreOwner = getComposeViewContext().f10012e;
        LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
        if (lifecycleOwner == null || viewModelStoreOwner == null || frameEndScheduler == null) {
            retainedValuesStore = null;
        } else {
            ViewModelProvider.Companion companion2 = ViewModelProvider.f13528b;
            ViewModelStore viewModelStore = viewModelStoreOwner.getF13587c();
            ViewModelProvider.NewInstanceFactory newInstanceFactory = new ViewModelProvider.NewInstanceFactory();
            CreationExtras.Empty empty = CreationExtras.Empty.f13578c;
            companion2.getClass();
            viewModelStore.getClass();
            empty.getClass();
            LifecycleRetainedValuesStoreOwner lifecycleRetainedValuesStoreOwner = (LifecycleRetainedValuesStoreOwner) new ViewModelProvider(viewModelStore, newInstanceFactory, empty).a(Reflection.f71922a.b(LifecycleRetainedValuesStoreOwner.class));
            Object parent = getParent();
            parent.getClass();
            int id = ((View) parent).getId();
            MutableIntObjectMap mutableIntObjectMap = lifecycleRetainedValuesStoreOwner.f10116a;
            Object objB = mutableIntObjectMap.b(id);
            if (objB == null) {
                objB = new MutableObjectList(1);
                mutableIntObjectMap.i(id, objB);
            }
            MutableObjectList mutableObjectList2 = (MutableObjectList) objB;
            Object[] objArr = mutableObjectList2.f3345a;
            int i5 = mutableObjectList2.f3346b;
            while (true) {
                if (i4 >= i5) {
                    obj = null;
                    break;
                }
                obj = objArr[i4];
                if (!((LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj).f10119c) {
                    break;
                } else {
                    i4++;
                }
            }
            LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = (LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj;
            if (retainedValuesStoreEntry == null) {
                retainedValuesStoreEntry = new LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry();
                mutableObjectList2.g(retainedValuesStoreEntry);
            }
            retainedValuesStoreEntry.f10119c = true;
            this.f9867h = retainedValuesStoreEntry;
            retainedValuesStore = retainedValuesStoreEntry.f10118b;
        }
        if (retainedValuesStore == null) {
            retainedValuesStore = ForgetfulRetainedValuesStore.f8412a;
        }
        this.retainedValuesStore = retainedValuesStore;
        Function1 function1 = this.m1;
        if (function1 != null) {
            function1.invoke(getComposeViewContext());
            this.m1 = null;
        }
        Lifecycle lifecycle = getComposeViewContext().f10011c.getD();
        lifecycle.a(this);
        lifecycle.a(this.contentCaptureManager);
        InputModeManagerImpl inputModeManagerImpl = this.v1;
        if (isInTouchMode()) {
            InputMode.f9205b.getClass();
            i2 = InputMode.f9206c;
        } else {
            InputMode.f9205b.getClass();
            i2 = InputMode.d;
        }
        ((SnapshotMutableStateImpl) inputModeManagerImpl.f9209b).setValue(new InputMode(i2));
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        getViewTreeObserver().addOnScrollChangedListener(this);
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (Build.VERSION.SDK_INT >= 31) {
            AndroidComposeViewTranslationCallbackS.f9930a.b(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            getFocusOwner().getG().g(androidAutofillManager);
            getSemanticsOwner().d.g(androidAutofillManager);
        }
        getFocusOwner().getG().g(this);
    }

    @Override // android.view.View
    public final boolean onCheckIsTextEditor() {
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.a(this.p1);
        if (androidPlatformTextInputSession == null) {
            return getLegacyTextInputServiceAndroid().d;
        }
        InputMethodSession inputMethodSession = (InputMethodSession) SessionMutex.a(androidPlatformTextInputSession.f9949e);
        return inputMethodSession != null && (inputMethodSession.f10098e ^ true);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d0(configuration);
    }

    @Override // android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String str;
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.a(this.p1);
        if (androidPlatformTextInputSession == null) {
            final TextInputServiceAndroid legacyTextInputServiceAndroid = getLegacyTextInputServiceAndroid();
            if (legacyTextInputServiceAndroid.d) {
                ImeOptions imeOptions = legacyTextInputServiceAndroid.f10850h;
                TextFieldValue textFieldValue = legacyTextInputServiceAndroid.g;
                int i2 = imeOptions.f10798e;
                boolean z = imeOptions.f10795a;
                ImeAction.f10785b.getClass();
                int i3 = ImeAction.d;
                int i4 = 6;
                if (i2 == i3) {
                    if (!z) {
                        i4 = 0;
                    }
                } else if (i2 == 0) {
                    i4 = 1;
                } else if (i2 == ImeAction.f10787e) {
                    i4 = 2;
                } else if (i2 == ImeAction.f10790i) {
                    i4 = 5;
                } else if (i2 == ImeAction.f10789h) {
                    i4 = 7;
                } else if (i2 == ImeAction.f10788f) {
                    i4 = 3;
                } else if (i2 == ImeAction.g) {
                    i4 = 4;
                } else if (i2 != ImeAction.f10791j) {
                    md.k("invalid ImeAction");
                    return null;
                }
                editorInfo.imeOptions = i4;
                PlatformImeOptions platformImeOptions = imeOptions.f10799f;
                if (platformImeOptions != null && (str = platformImeOptions.f10826a) != null) {
                    editorInfo.privateImeOptions = str;
                }
                int i5 = imeOptions.d;
                KeyboardType.f10809b.getClass();
                if (i5 == KeyboardType.f10810c) {
                    editorInfo.inputType = 1;
                } else if (i5 == KeyboardType.d) {
                    editorInfo.inputType = 1;
                    editorInfo.imeOptions |= Integer.MIN_VALUE;
                } else if (i5 == KeyboardType.f10811e) {
                    editorInfo.inputType = 2;
                } else if (i5 == KeyboardType.f10812f) {
                    editorInfo.inputType = 3;
                } else if (i5 == KeyboardType.g) {
                    editorInfo.inputType = 17;
                } else if (i5 == KeyboardType.f10813h) {
                    editorInfo.inputType = 33;
                } else if (i5 == KeyboardType.f10814i) {
                    editorInfo.inputType = 129;
                } else if (i5 == KeyboardType.f10815j) {
                    editorInfo.inputType = 18;
                } else {
                    if (i5 != KeyboardType.f10816k) {
                        md.k("Invalid Keyboard Type");
                        return null;
                    }
                    editorInfo.inputType = 8194;
                }
                if (!z) {
                    int i6 = editorInfo.inputType;
                    if ((i6 & 1) == 1) {
                        editorInfo.inputType = i6 | 131072;
                        if (imeOptions.f10798e == i3) {
                            editorInfo.imeOptions |= 1073741824;
                        }
                    }
                }
                if ((editorInfo.inputType & 1) == 1) {
                    int i7 = imeOptions.f10796b;
                    KeyboardCapitalization.f10804b.getClass();
                    if (i7 == KeyboardCapitalization.d) {
                        editorInfo.inputType |= 4096;
                    } else if (i7 == KeyboardCapitalization.f10806e) {
                        editorInfo.inputType |= 8192;
                    } else if (i7 == KeyboardCapitalization.f10807f) {
                        editorInfo.inputType |= 16384;
                    }
                    if (imeOptions.f10797c) {
                        editorInfo.inputType |= 32768;
                    }
                }
                long j2 = textFieldValue.f10841b;
                TextRange.Companion companion = TextRange.f10564b;
                editorInfo.initialSelStart = (int) (j2 >> 32);
                editorInfo.initialSelEnd = (int) (j2 & BodyPartID.bodyIdMax);
                EditorInfoCompat.a(editorInfo, textFieldValue.f10840a.f10420c);
                editorInfo.imeOptions |= 33554432;
                if (EmojiCompat.g()) {
                    EmojiCompat.a().l(editorInfo);
                }
                RecordingInputConnection recordingInputConnection = new RecordingInputConnection(legacyTextInputServiceAndroid.g, new InputEventCallback2() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$createInputConnection$1
                    @Override // androidx.compose.ui.text.input.InputEventCallback2
                    public final void a(KeyEvent keyEvent) {
                        ((BaseInputConnection) legacyTextInputServiceAndroid.f10852j.getF71699b()).sendKeyEvent(keyEvent);
                    }

                    @Override // androidx.compose.ui.text.input.InputEventCallback2
                    public final void b(ArrayList arrayList) {
                        legacyTextInputServiceAndroid.f10848e.invoke(arrayList);
                    }

                    @Override // androidx.compose.ui.text.input.InputEventCallback2
                    public final void c(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
                        CursorAnchorInfoController cursorAnchorInfoController = legacyTextInputServiceAndroid.l;
                        synchronized (cursorAnchorInfoController.f10763c) {
                            try {
                                cursorAnchorInfoController.f10765f = z4;
                                cursorAnchorInfoController.g = z5;
                                cursorAnchorInfoController.f10766h = z6;
                                cursorAnchorInfoController.f10767i = z7;
                                if (z2) {
                                    cursorAnchorInfoController.f10764e = true;
                                    if (cursorAnchorInfoController.f10768j != null) {
                                        cursorAnchorInfoController.a();
                                    }
                                }
                                cursorAnchorInfoController.d = z3;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }

                    @Override // androidx.compose.ui.text.input.InputEventCallback2
                    public final void d(int i8) {
                        legacyTextInputServiceAndroid.f10849f.invoke(new ImeAction(i8));
                    }

                    @Override // androidx.compose.ui.text.input.InputEventCallback2
                    public final void e(RecordingInputConnection recordingInputConnection2) {
                        ArrayList arrayList = legacyTextInputServiceAndroid.f10851i;
                        int size = arrayList.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            if (Intrinsics.c(((WeakReference) arrayList.get(i8)).get(), recordingInputConnection2)) {
                                arrayList.remove(i8);
                                return;
                            }
                        }
                    }
                }, legacyTextInputServiceAndroid.f10850h.f10797c);
                legacyTextInputServiceAndroid.f10851i.add(new WeakReference(recordingInputConnection));
                return recordingInputConnection;
            }
        } else {
            final InputMethodSession inputMethodSession = (InputMethodSession) SessionMutex.a(androidPlatformTextInputSession.f9949e);
            if (inputMethodSession != null) {
                synchronized (inputMethodSession.f10097c) {
                    if (inputMethodSession.f10098e) {
                        return null;
                    }
                    NullableInputConnectionWrapper nullableInputConnectionWrapperA = NullableInputConnectionWrapper_androidKt.a(inputMethodSession.f10095a.a(editorInfo), new Function1<NullableInputConnectionWrapper, Unit>() { // from class: androidx.compose.ui.platform.InputMethodSession$createInputConnection$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            NullableInputConnectionWrapper nullableInputConnectionWrapper = (NullableInputConnectionWrapper) obj;
                            nullableInputConnectionWrapper.a();
                            InputMethodSession inputMethodSession2 = inputMethodSession;
                            MutableVector mutableVector = inputMethodSession2.d;
                            Object[] objArr = mutableVector.f8165b;
                            int i8 = mutableVector.d;
                            int i9 = 0;
                            while (true) {
                                if (i9 >= i8) {
                                    i9 = -1;
                                    break;
                                }
                                if (Intrinsics.c((androidx.compose.ui.node.WeakReference) objArr[i9], nullableInputConnectionWrapper)) {
                                    break;
                                }
                                i9++;
                            }
                            if (i9 >= 0) {
                                mutableVector.o(i9);
                            }
                            if (mutableVector.d == 0) {
                                inputMethodSession2.f10096b.mo47invoke();
                            }
                            return Unit.f71739a;
                        }
                    });
                    inputMethodSession.d.b(new androidx.compose.ui.node.WeakReference(nullableInputConnectionWrapperA));
                    return nullableInputConnectionWrapperA;
                }
            }
        }
        return null;
    }

    @Override // android.view.View
    public final void onCreateVirtualViewTranslationRequests(long[] jArr, int[] iArr, Consumer consumer) {
        this.contentCaptureManager.h(jArr, consumer);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        TouchUserInteractionHandler touchUserInteractionHandler = UserInteractionsApi.f26698a;
        touchUserInteractionHandler.getClass();
        touchUserInteractionHandler.f26686a.remove(this);
        super.onDetachedFromWindow();
        setAttached(false);
        this.insetsListener.onViewDetachedFromWindow(this);
        View view = this.m;
        if (T() && view != null) {
            removeView(view);
        }
        P1.getClass();
        MutableObjectList mutableObjectList = T1;
        synchronized (mutableObjectList) {
            mutableObjectList.l(this);
        }
        getComposeViewContext().b();
        SnapshotStateObserver snapshotStateObserver = getSnapshotObserver().f9812a;
        j00 j00Var = snapshotStateObserver.f8503h;
        if (j00Var != null) {
            j00Var.dispose();
        }
        snapshotStateObserver.a();
        Lifecycle lifecycle = getComposeViewContext().f10011c.getD();
        lifecycle.d(this.contentCaptureManager);
        lifecycle.d(this);
        AndroidAutofill androidAutofill = this.O;
        if (androidAutofill != null) {
            AutofillCallback autofillCallback = AutofillCallback.f8642a;
            autofillCallback.getClass();
            androidAutofill.f8627c.unregisterCallback(autofillCallback);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getViewTreeObserver().removeOnScrollChangedListener(this);
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.f9867h;
        if (retainedValuesStoreEntry != null) {
            retainedValuesStoreEntry.f10119c = false;
        }
        this.f9867h = null;
        if (Build.VERSION.SDK_INT >= 31) {
            AndroidComposeViewTranslationCallbackS.f9930a.a(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            getSemanticsOwner().d.l(androidAutofillManager);
            getFocusOwner().getG().l(androidAutofillManager);
        }
        RectManager rectManager = getRectManager();
        ThrottledCallbacks throttledCallbacks = rectManager.f10386c;
        IntOffset.f11012b.getClass();
        rectManager.f10388f = throttledCallbacks.c(0L, 0L, null, 0, 0);
        getRectManager().a();
        RectManager rectManager2 = getRectManager();
        Object obj = rectManager2.f10389h;
        if (obj != null) {
            rectManager2.f10384a.j(obj);
            rectManager2.f10389h = null;
        }
        getFocusOwner().getG().l(this);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (z || hasFocus()) {
            return;
        }
        getFocusOwner().x();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.lastMatrixRecalculationAnimationTime = 0L;
        e0();
        int i2 = Build.VERSION.SDK_INT;
        if (32 > i2 || i2 >= 34) {
            return;
        }
        d0(getResources().getConfiguration());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Trace.beginSection("AndroidOwner:onLayout");
        try {
            this.lastMatrixRecalculationAnimationTime = 0L;
            this.b1.l(this.I1);
            this.h0 = null;
            e0();
            if (this.W != null) {
                Trace.beginSection("AndroidOwner:viewLayout");
                try {
                    getAndroidViewsHandler$ui().layout(0, 0, i4 - i2, i5 - i3);
                    Trace.endSection();
                } finally {
                    Trace.endSection();
                }
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                S(getRoot());
            }
            long jP = P(i2);
            ULong.Companion companion = ULong.INSTANCE;
            int i4 = (int) (jP >>> 32);
            int i5 = (int) (jP & BodyPartID.bodyIdMax);
            long jP2 = P(i3);
            int i6 = (int) (BodyPartID.bodyIdMax & jP2);
            Constraints.f10998b.getClass();
            long jA = Constraints.Companion.a(i4, i5, (int) (jP2 >>> 32), i6);
            Constraints constraints = this.h0;
            if (constraints == null) {
                this.h0 = new Constraints(jA);
                this.t0 = false;
            } else if (!Constraints.b(constraints.f10999a, jA)) {
                this.t0 = true;
            }
            measureAndLayoutDelegate.s(jA);
            measureAndLayoutDelegate.n();
            setMeasuredDimension(getRoot().I.p.f9548b, getRoot().I.p.f9549c);
            if (this.W != null) {
                Trace.beginSection("AndroidOwner:androidViewMeasure");
                try {
                    getAndroidViewsHandler$ui().measure(View.MeasureSpec.makeMeasureSpec(getRoot().I.p.f9548b, 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().I.p.f9549c, 1073741824));
                    Trace.endSection();
                } finally {
                    Trace.endSection();
                }
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a1  */
    @Override // android.view.View
    public final void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i2) {
        if (viewStructure != null) {
            AndroidAutofillManager androidAutofillManager = this._autofillManager;
            if (androidAutofillManager != null) {
                LayoutNode layoutNode = androidAutofillManager.f8629c.f10327a;
                AutofillId autofillId = androidAutofillManager.f8632h;
                String str = androidAutofillManager.f8631f;
                RectManager rectManager = androidAutofillManager.f8630e;
                PopulateViewStructure_androidKt.a(viewStructure, layoutNode, autofillId, str, rectManager);
                Object[] objArr = ObjectListKt.f3348a;
                MutableObjectList mutableObjectList = new MutableObjectList(2);
                mutableObjectList.g(layoutNode);
                mutableObjectList.g(viewStructure);
                while (mutableObjectList.e()) {
                    Object objM = mutableObjectList.m(mutableObjectList.f3346b - 1);
                    objM.getClass();
                    ViewStructure viewStructure2 = (ViewStructure) objM;
                    Object objM2 = mutableObjectList.m(mutableObjectList.f3346b - 1);
                    objM2.getClass();
                    List listO = ((SemanticsInfo) objM2).o();
                    int size = listO.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        SemanticsInfo semanticsInfo = (SemanticsInfo) listO.get(i3);
                        if (!semanticsInfo.getS() && semanticsInfo.c() && semanticsInfo.A()) {
                            SemanticsConfiguration semanticsConfigurationI = semanticsInfo.i();
                            if (semanticsConfigurationI != null) {
                                MutableScatterMap mutableScatterMap = semanticsConfigurationI.f10312b;
                                if (mutableScatterMap.b(SemanticsActions.g) || mutableScatterMap.b(SemanticsActions.f10307h) || mutableScatterMap.b(SemanticsProperties.r) || mutableScatterMap.b(SemanticsProperties.s)) {
                                    ViewStructure viewStructureNewChild = viewStructure2.newChild(viewStructure2.addChildCount(1));
                                    PopulateViewStructure_androidKt.a(viewStructureNewChild, semanticsInfo, autofillId, str, rectManager);
                                    mutableObjectList.g(semanticsInfo);
                                    mutableObjectList.g(viewStructureNewChild);
                                } else {
                                    mutableObjectList.g(semanticsInfo);
                                    mutableObjectList.g(viewStructure2);
                                }
                            } else {
                                mutableObjectList.g(semanticsInfo);
                                mutableObjectList.g(viewStructure2);
                            }
                        }
                    }
                }
            }
            AndroidAutofill androidAutofill = this.O;
            if (androidAutofill != null) {
                AndroidAutofill_androidKt.a(androidAutofill, viewStructure);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final android.view.PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        PointerIcon pointerIconB;
        int toolType = motionEvent.getToolType(i2);
        if (motionEvent.isFromSource(8194) || !motionEvent.isFromSource(16386) || (!(toolType == 2 || toolType == 4) || (pointerIconB = getPointerIconService().getF9887b()) == null)) {
            return super.onResolvePointerIcon(motionEvent, i2);
        }
        Context context = getContext();
        if (pointerIconB instanceof AndroidPointerIcon) {
            return ((AndroidPointerIcon) pointerIconB).f9263b;
        }
        return pointerIconB instanceof AndroidPointerIconType ? android.view.PointerIcon.getSystemIcon(context, ((AndroidPointerIconType) pointerIconB).f9264b) : android.view.PointerIcon.getSystemIcon(context, 1000);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        CancellationHandle cancellationHandleA;
        if (Build.VERSION.SDK_INT < 30) {
            P1.getClass();
            setShowLayoutBounds(Companion.a());
        }
        final LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.f9867h;
        if (retainedValuesStoreEntry != null) {
            LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
            frameEndScheduler.getClass();
            LifecycleRetainedValuesStore lifecycleRetainedValuesStore = retainedValuesStoreEntry.f10117a;
            ManagedRetainedValuesStore managedRetainedValuesStore = lifecycleRetainedValuesStore.f10115a;
            if (!managedRetainedValuesStore.f8414a || managedRetainedValuesStore.f8416c) {
                return;
            }
            try {
                cancellationHandleA = frameEndScheduler.a(new Function0<Unit>() { // from class: androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        ManagedRetainedValuesStore managedRetainedValuesStore2 = retainedValuesStoreEntry.f10117a.f10115a;
                        if (!managedRetainedValuesStore2.f8415b) {
                            if (managedRetainedValuesStore2.f8416c) {
                                PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                            }
                            managedRetainedValuesStore2.a();
                            managedRetainedValuesStore2.f8416c = true;
                        }
                        return Unit.f71739a;
                    }
                });
            } catch (CancellationException unused) {
                ManagedRetainedValuesStore managedRetainedValuesStore2 = lifecycleRetainedValuesStore.f10115a;
                if (!managedRetainedValuesStore2.f8415b) {
                    if (managedRetainedValuesStore2.f8416c) {
                        PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore2.a();
                    managedRetainedValuesStore2.f8416c = true;
                }
                cancellationHandleA = null;
            }
            CancellationHandle cancellationHandle = retainedValuesStoreEntry.d;
            if (cancellationHandle != null) {
                cancellationHandle.cancel();
            }
            retainedValuesStoreEntry.d = cancellationHandleA;
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        LayoutDirection layoutDirection;
        if (this.d) {
            int[] iArr = FocusInteropUtils_androidKt.f8739a;
            if (i2 != 0) {
                layoutDirection = i2 != 1 ? null : LayoutDirection.Rtl;
            } else {
                layoutDirection = LayoutDirection.Ltr;
            }
            if (layoutDirection == null) {
                layoutDirection = LayoutDirection.Ltr;
            }
            setLayoutDirection(layoutDirection);
        }
    }

    @Override // android.view.View
    public final void onScrollCaptureSearch(Rect rect, Point point, Consumer consumer) {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.M1) == null) {
            return;
        }
        scrollCapture.c(this, getSemanticsOwner(), getCoroutineContext(), consumer);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        e0();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.f9867h;
        if (retainedValuesStoreEntry != null) {
            ManagedRetainedValuesStore managedRetainedValuesStore = retainedValuesStoreEntry.f10117a.f10115a;
            if (managedRetainedValuesStore.f8414a && !managedRetainedValuesStore.f8416c) {
                CancellationHandle cancellationHandle = retainedValuesStoreEntry.d;
                if (cancellationHandle != null) {
                    cancellationHandle.cancel();
                }
                retainedValuesStoreEntry.d = null;
                return;
            }
            if (managedRetainedValuesStore.f8415b) {
                return;
            }
            if (!managedRetainedValuesStore.f8416c) {
                PreconditionsKt.a("ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?");
            }
            if (!managedRetainedValuesStore.d.f()) {
                PreconditionsKt.a("Attempted to start retaining exited values with pending exited values");
            }
            managedRetainedValuesStore.f8416c = false;
        }
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public final void onTouchModeChanged(boolean z) {
        int i2;
        if (z) {
            InputMode.f9205b.getClass();
            i2 = InputMode.f9206c;
        } else {
            InputMode.f9205b.getClass();
            i2 = InputMode.d;
        }
        ((SnapshotMutableStateImpl) this.v1.f9209b).setValue(new InputMode(i2));
    }

    @Override // android.view.View
    public final void onVirtualViewTranslationResponses(LongSparseArray longSparseArray) {
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.getClass();
        AndroidContentCaptureManager.k(androidContentCaptureManager, longSparseArray);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        this.K1 = true;
        super.onWindowFocusChanged(z);
        if (!z || Build.VERSION.SDK_INT >= 30) {
            return;
        }
        P1.getClass();
        boolean zA = Companion.a();
        if (getShowLayoutBounds() != zA) {
            setShowLayoutBounds(zA);
            R(getRoot());
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void p(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            androidAutofillManager.b(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void q(LayoutNode layoutNode) {
        getLayoutNodes().i(layoutNode.f9689c, layoutNode);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.node.Owner
    public final CoroutineSingletons r(Function2 function2, ContinuationImpl continuationImpl) {
        AndroidComposeView$textInputSession$1 androidComposeView$textInputSession$1;
        if (continuationImpl instanceof AndroidComposeView$textInputSession$1) {
            androidComposeView$textInputSession$1 = (AndroidComposeView$textInputSession$1) continuationImpl;
            int i2 = androidComposeView$textInputSession$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidComposeView$textInputSession$1.d = i2 - Integer.MIN_VALUE;
            } else {
                androidComposeView$textInputSession$1 = new AndroidComposeView$textInputSession$1(this, continuationImpl);
            }
        } else {
            androidComposeView$textInputSession$1 = new AndroidComposeView$textInputSession$1(this, continuationImpl);
        }
        Object obj = androidComposeView$textInputSession$1.f9895b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = androidComposeView$textInputSession$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Function1<CoroutineScope, AndroidPlatformTextInputSession> function1 = new Function1<CoroutineScope, AndroidPlatformTextInputSession>() { // from class: androidx.compose.ui.platform.AndroidComposeView$textInputSession$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    AndroidComposeView androidComposeView = this.f9897c;
                    return new AndroidPlatformTextInputSession(androidComposeView, androidComposeView.getTextInputService(), (CoroutineScope) obj2);
                }
            };
            androidComposeView$textInputSession$1.d = 1;
            if (SessionMutex.b(this.p1, function1, function2, androidComposeView$textInputSession$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i2, Rect rect) {
        final int i3;
        if (isFocused()) {
            return true;
        }
        FocusDirection focusDirectionD = FocusInteropUtils_androidKt.d(i2);
        if (focusDirectionD != null) {
            i3 = focusDirectionD.f8738a;
        } else {
            FocusDirection.f8731b.getClass();
            i3 = FocusDirection.f8736i;
        }
        Boolean boolA = getFocusOwner().A(i3, rect != null ? new androidx.compose.ui.geometry.Rect(rect.left, rect.top, rect.right, rect.bottom) : null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$requestFocusBypassUnfocusableComposeView$requestFocusWithPrevRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((FocusTargetNode) obj).H(i3));
            }
        });
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.c(boolA, bool) || Intrinsics.c(getFocusOwner().A(i3, null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$requestFocusBypassUnfocusableComposeView$requestFocusWithoutPrevRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((FocusTargetNode) obj).H(i3));
            }
        }), bool)) {
            return true;
        }
        if (hasFocus() && FocusOwnerImplKt.a(i3)) {
            return getFocusOwner().s(i3);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void s(BackwardsCompatNode$initializeModifier$3 backwardsCompatNode$initializeModifier$3) {
        this.b1.f9747f.b(backwardsCompatNode$initializeModifier$3);
        a0(null);
    }

    public void setAccessibilityEventBatchIntervalMillis(long intervalMillis) {
        this.B.f9902i = intervalMillis;
    }

    public final void setComposeViewContext(ComposeViewContext composeViewContext) {
        if (getCoroutineContext() != composeViewContext.f10010b.getX() && !getRoot().H().isEmpty()) {
            InlineClassHelperKt.a("Changing ComposeViewContext cannot change the coroutine context without disposing of the composition first.");
        }
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 function1E = snapshotA != null ? snapshotA.getF8461f() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            ComposeViewContext composeViewContext2 = get_composeViewContext();
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            if (composeViewContext != composeViewContext2) {
                if (isAttachedToWindow()) {
                    composeViewContext2.b();
                    composeViewContext.c();
                }
                set_composeViewContext(composeViewContext);
                setCoroutineContext(composeViewContext.f10010b.getX());
            }
        } catch (Throwable th) {
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            throw th;
        }
    }

    public final void setComposeViewContextIncrementedDuringInit$ui(boolean z) {
        this.composeViewContextIncrementedDuringInit = z;
    }

    public final void setConfiguration(Configuration configuration) {
        ((SnapshotMutableStateImpl) this.configuration).setValue(configuration);
    }

    public final void setContentCaptureManager$ui(AndroidContentCaptureManager androidContentCaptureManager) {
        this.contentCaptureManager = androidContentCaptureManager;
    }

    public void setCoroutineContext(CoroutineContext coroutineContext) {
        this.coroutineContext = coroutineContext;
    }

    public final void setFrameEndScheduler$ui(LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler) {
        this.frameEndScheduler = frameEndScheduler;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui(long j2) {
        this.lastMatrixRecalculationAnimationTime = j2;
    }

    public final void setOnReadyForComposition(Function1<? super ComposeViewContext, Unit> callback) {
        getDerivedIsAttached();
        if (isAttachedToWindow() || this.composeViewContextIncrementedDuringInit) {
            callback.invoke(getComposeViewContext());
        } else {
            this.m1 = callback;
        }
    }

    /* JADX INFO: renamed from: setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui, reason: not valid java name */
    public final void m8setPrimaryDirectionalMotionAxisOverrider2epLt8$ui(IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        this.primaryDirectionalMotionAxisOverride = indirectPointerEventPrimaryDirectionalMotionAxis;
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
    }

    public void setUncaughtExceptionHandler(RootForTest.UncaughtExceptionHandler handler) {
        this.uncaughtExceptionHandler = handler;
        this.b1.f9750j = handler;
    }

    public final void setUncaughtExceptionHandler$ui(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.uncaughtExceptionHandler = uncaughtExceptionHandler;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void t(int i2, LayoutNode layoutNode) {
        getLayoutNodes().g(i2);
        getLayoutNodes().i(layoutNode.f9689c, layoutNode);
    }

    @Override // androidx.compose.ui.node.OutOfFrameExecutor
    public final void u(Function0 function0) {
        ArrayDeque arrayDeque = this.f9869j;
        boolean zIsEmpty = arrayDeque.isEmpty();
        arrayDeque.addLast(function0);
        if (zIsEmpty) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtFrontOfQueue(this.f9870k);
            } else {
                md.n("schedule is called when outOfFrameExecutor is not available (view is detached)");
            }
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final OwnedLayer v(Function2 function2, Function0 function0, GraphicsLayer graphicsLayer) {
        MutableVector mutableVector;
        Reference referencePoll;
        Object obj;
        if (graphicsLayer != null) {
            return new GraphicsLayerOwnerLayer(graphicsLayer, null, this, function2, function0);
        }
        do {
            WeakCache weakCache = this.A1;
            ReferenceQueue referenceQueue = weakCache.f10176b;
            mutableVector = weakCache.f10175a;
            referencePoll = referenceQueue.poll();
            if (referencePoll != null) {
                mutableVector.n(referencePoll);
            }
        } while (referencePoll != null);
        do {
            int i2 = mutableVector.d;
            if (i2 == 0) {
                obj = null;
                break;
            }
            obj = ((Reference) mutableVector.o(i2 - 1)).get();
        } while (obj == null);
        OwnedLayer ownedLayer = (OwnedLayer) obj;
        if (ownedLayer == null) {
            return new GraphicsLayerOwnerLayer(getGraphicsContext().a(), getGraphicsContext(), this, function2, function0);
        }
        ownedLayer.h(function0, function2);
        return ownedLayer;
    }

    @Override // androidx.compose.ui.node.Owner
    public final void w(int i2, LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            View view = androidAutofillManager.d;
            PlatformAutofillManager platformAutofillManager = androidAutofillManager.f8628b;
            MutableIntSet mutableIntSet = androidAutofillManager.f8633i;
            if (mutableIntSet.g(i2)) {
                platformAutofillManager.d(view, i2, false);
            }
            SemanticsConfiguration semanticsConfigurationI = layoutNode.i();
            if (semanticsConfigurationI == null || !semanticsConfigurationI.f10312b.b(SemanticsProperties.r)) {
                return;
            }
            mutableIntSet.b(layoutNode.f9689c);
            platformAutofillManager.d(view, layoutNode.f9689c, true);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void x() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        P1.getClass();
        try {
            if (V1 == null) {
                Method declaredMethod = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                declaredMethod.setAccessible(true);
                V1 = declaredMethod;
            }
            Method method = V1;
            if (method != null) {
                method.invoke(viewTreeObserver, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final void y(LayoutNode layoutNode, long j2) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.b1;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            measureAndLayoutDelegate.m(layoutNode, j2);
            if (!measureAndLayoutDelegate.f9744b.c()) {
                measureAndLayoutDelegate.b(false);
                getRectManager().a();
                if (this.J) {
                    getViewTreeObserver().dispatchOnGlobalLayout();
                    this.J = false;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public final long z(long j2) {
        Y();
        return Matrix.b(j2, this.g1);
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidClipboard getClipboard() {
        return this.clipboard;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidDragAndDropManager getDragAndDropManager() {
        return this.dragAndDropManager;
    }

    public MutableIntObjectMap<LayoutNode> getLayoutNodes() {
        return this.layoutNodes;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, int i3) {
        ViewGroup.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = i2;
        layoutParamsGenerateDefaultLayoutParams.height = i3;
        addViewInLayout(view, -1, layoutParamsGenerateDefaultLayoutParams, true);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, i2, layoutParams, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, -1, layoutParams, true);
    }
}
