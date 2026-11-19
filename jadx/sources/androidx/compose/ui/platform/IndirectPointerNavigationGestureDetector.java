package androidx.compose.ui.platform;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusDirection;", "", "onMoveFocus", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IndirectPointerNavigationGestureDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f10088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f10090c;
    public final GestureDetector d;

    public IndirectPointerNavigationGestureDetector(Context context, Function1<? super FocusDirection, Unit> function1) {
        this.f10088a = function1;
        IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
        this.f10089b = 0;
        this.d = new GestureDetector(context, new GestureDetector.OnGestureListener() { // from class: androidx.compose.ui.platform.IndirectPointerNavigationGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                int i2;
                int i3;
                IndirectPointerNavigationGestureDetector indirectPointerNavigationGestureDetector = this.f10091b;
                Function1 function2 = indirectPointerNavigationGestureDetector.f10088a;
                if (!indirectPointerNavigationGestureDetector.f10090c) {
                    int i4 = indirectPointerNavigationGestureDetector.f10089b;
                    IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                    if (i4 == IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c) {
                        if (Math.abs(f2) > Math.abs(f3)) {
                            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                FocusDirection.f8731b.getClass();
                                i3 = FocusDirection.f8732c;
                            } else {
                                FocusDirection.f8731b.getClass();
                                i3 = FocusDirection.d;
                            }
                            function2.invoke(new FocusDirection(i3));
                            return true;
                        }
                    } else if (indirectPointerNavigationGestureDetector.f10089b == IndirectPointerEventPrimaryDirectionalMotionAxis.d && Math.abs(f3) > Math.abs(f2)) {
                        if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            FocusDirection.f8731b.getClass();
                            i2 = FocusDirection.f8732c;
                        } else {
                            FocusDirection.f8731b.getClass();
                            i2 = FocusDirection.d;
                        }
                        function2.invoke(new FocusDirection(i2));
                    }
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        });
    }
}
