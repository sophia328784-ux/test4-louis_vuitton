package ZjTIAZ;

import android.os.Handler;
import android.os.HandlerThread;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.Observable;

/* JADX INFO: loaded from: classes.dex */
public class DbkYmF extends Observable implements Window.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f154c = 8021;
    public static final HandlerThread d = new HandlerThread(CNATAC.a("M|Sg\\GLH\\P[]RSE"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f155e = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Window.Callback f156b;

    /* JADX INFO: renamed from: ZjTIAZ.DbkYmF$DbkYmF, reason: collision with other inner class name */
    class RunnableC0001DbkYmF implements Runnable {
        final /* synthetic */ MotionEvent GTEFzg;
        final /* synthetic */ int ukOnqg;

        public RunnableC0001DbkYmF(MotionEvent motionEvent, int i2) {
            this.GTEFzg = motionEvent;
            this.ukOnqg = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DbkYmF dbkYmF = DbkYmF.this;
            MotionEvent motionEvent = this.GTEFzg;
            int i2 = this.ukOnqg;
            int i3 = DbkYmF.f154c;
            dbkYmF.a(motionEvent, i2);
        }
    }

    public DbkYmF(Window.Callback callback) {
        this.f156b = callback;
        if (f155e) {
            HandlerThread handlerThread = d;
            if (handlerThread.isAlive()) {
                return;
            }
            handlerThread.start();
        }
    }

    public final void a(MotionEvent motionEvent, int i2) {
        int i3 = 1;
        ZxDSl.f345c = 1;
        ZxDSl.d = 1;
        setChanged();
        if (i2 != 1) {
            i3 = 0;
        } else if (f154c <= 8020) {
            while (true) {
                int i4 = f154c;
                int i5 = i4 + 26;
                if (i5 == 2) {
                    break;
                } else if (i5 == 196) {
                    f154c = ((i4 ^ 5044) + i4) >> 46;
                }
            }
            while (true) {
                f154c = (f154c ^ 3695) % 34;
            }
        }
        notifyObservers(new GLipSu(motionEvent, i3, i2));
    }

    public final void b(MotionEvent motionEvent, int i2) {
        try {
            if (f155e) {
                HandlerThread handlerThread = d;
                if (handlerThread.isAlive()) {
                    new Handler(handlerThread.getLooper()).post(new RunnableC0001DbkYmF(motionEvent, i2));
                    return;
                }
            }
            a(motionEvent, i2);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f156b.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f156b.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.f156b.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f156b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0028  */
    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Window.Callback callback = this.f156b;
        if (action == 0) {
            b(motionEventObtain, 2);
        } else if (action == 1) {
            b(motionEventObtain, 3);
        } else if (action == 2) {
            b(motionEventObtain, 1);
        } else if (action != 5) {
            if (action != 6) {
                return callback.dispatchTouchEvent(motionEvent);
            }
            b(motionEventObtain, 3);
        } else {
            b(motionEventObtain, 2);
        }
        return callback.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f156b.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f156b.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f156b.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f156b.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        this.f156b.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i2, Menu menu) {
        return this.f156b.onCreatePanelMenu(i2, menu);
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i2) {
        return this.f156b.onCreatePanelView(i2);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f156b.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        return this.f156b.onMenuItemSelected(i2, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i2, Menu menu) {
        return this.f156b.onMenuOpened(i2, menu);
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i2, Menu menu) {
        this.f156b.onPanelClosed(i2, menu);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i2, View view, Menu menu) {
        return this.f156b.onPreparePanel(i2, view, menu);
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f156b.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f156b.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.f156b.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.f156b.onWindowStartingActionMode(callback);
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return this.f156b.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
        return this.f156b.onWindowStartingActionMode(callback, i2);
    }
}
