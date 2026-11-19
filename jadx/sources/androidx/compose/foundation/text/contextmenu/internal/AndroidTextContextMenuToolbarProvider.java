package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.dynatrace.android.callback.Callback;
import defpackage.g6;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0002\f\rB3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;", "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;", "Landroid/view/View;", "view", "Lkotlin/Function1;", "Landroidx/compose/foundation/text/contextmenu/internal/TextActionModeCallback;", "callbackInjector", "Lkotlin/Function0;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "coordinatesProvider", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "TextActionModeCallbackImpl", "TextContextMenuSessionImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidTextContextMenuToolbarProvider implements TextContextMenuProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f6082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f6083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f6084c;
    public final MutatorMutex d = new MutatorMutex();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SnapshotStateObserver f6085e = new SnapshotStateObserver(new g6(this, 0));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g6 f6086f = new g6(this, 1);
    public final g6 g = new g6(this, 2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ActionMode f6087h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b f6088i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6089j;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;", "Landroidx/compose/foundation/text/contextmenu/internal/TextActionModeCallback;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;", "session", "Lkotlin/Function0;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", "dataBuilder", "Landroidx/compose/ui/geometry/Rect;", "positioner", "Landroid/view/View;", "view", "<init>", "(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TextActionModeCallbackImpl implements TextActionModeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextContextMenuSession f6090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function0 f6091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function0 f6092c;
        public final View d;

        public TextActionModeCallbackImpl(TextContextMenuSession textContextMenuSession, Function0<TextContextMenuData> function0, Function0<Rect> function1, View view) {
            this.f6090a = textContextMenuSession;
            this.f6091b = function0;
            this.f6092c = function1;
            this.d = view;
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public final Rect a() {
            return (Rect) this.f6092c.mo47invoke();
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public final boolean b(Menu menu) {
            e(menu);
            return menu.size() > 0;
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public final void c() {
            this.f6090a.close();
        }

        @Override // androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback
        public final boolean d(Menu menu) {
            return e(menu);
        }

        public final boolean e(Menu menu) {
            int i2;
            int i3;
            TextContextMenuData textContextMenuData = (TextContextMenuData) this.f6091b.mo47invoke();
            final int i4 = 0;
            if (Intrinsics.c(textContextMenuData, null)) {
                return false;
            }
            menu.clear();
            List list = textContextMenuData.f6068a;
            int size = list.size();
            final int i5 = 1;
            int i6 = 0;
            int i7 = 1;
            int i8 = 1;
            while (i6 < size) {
                TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i6);
                if (textContextMenuComponent instanceof TextContextMenuItem) {
                    i2 = i7 + 1;
                    Object obj = textContextMenuComponent.f6065a;
                    if (Intrinsics.c(obj, TextContextMenuKeys.f6071a)) {
                        i3 = R.id.cut;
                    } else if (Intrinsics.c(obj, TextContextMenuKeys.f6072b)) {
                        i3 = R.id.copy;
                    } else if (Intrinsics.c(obj, TextContextMenuKeys.f6073c)) {
                        i3 = R.id.paste;
                    } else if (Intrinsics.c(obj, TextContextMenuKeys.d)) {
                        i3 = R.id.selectAll;
                    } else {
                        i3 = Intrinsics.c(obj, TextContextMenuKeys.f6074e) ? R.id.autofill : i7;
                    }
                    final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                    MenuItem menuItemAdd = menu.add(i8, i3, i7, textContextMenuItem.f6069b);
                    menuItemAdd.setShowAsAction(2);
                    menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.a
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            int i9 = i4;
                            Object obj2 = this;
                            Object obj3 = textContextMenuItem;
                            switch (i9) {
                                case 0:
                                    TextContextMenuItem textContextMenuItem2 = (TextContextMenuItem) obj3;
                                    AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl = (AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) obj2;
                                    Callback.u(menuItem);
                                    try {
                                        textContextMenuItem2.d.invoke(textActionModeCallbackImpl.f6090a);
                                        return true;
                                    } finally {
                                        Callback.v();
                                    }
                                default:
                                    Context context = (Context) obj3;
                                    TextClassification textClassification = (TextClassification) obj2;
                                    Callback.u(menuItem);
                                    try {
                                        String text = textClassification.getText();
                                        PendingIntent activity = PendingIntent.getActivity(context, text != null ? text.hashCode() : 0, textClassification.getIntent(), 201326592);
                                        if (Build.VERSION.SDK_INT >= 34) {
                                            TextClassificationHelper34.a(activity);
                                        } else {
                                            activity.send();
                                        }
                                        return true;
                                    } finally {
                                        Callback.v();
                                    }
                            }
                        }
                    });
                } else {
                    if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                        i2 = i7 + 1;
                        final Context context = this.d.getContext();
                        TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                        final TextClassification textClassification = textContextMenuTextClassificationItem.f6076b;
                        int i9 = textContextMenuTextClassificationItem.f6077c;
                        if (i9 < 0) {
                            MenuItem menuItemAdd2 = menu.add(R.id.textAssist, R.id.textAssist, i7, textClassification.getLabel());
                            menuItemAdd2.setShowAsAction(2);
                            menuItemAdd2.setIcon(textClassification.getIcon());
                            menuItemAdd2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.a
                                @Override // android.view.MenuItem.OnMenuItemClickListener
                                public final boolean onMenuItemClick(MenuItem menuItem) {
                                    int i10 = i5;
                                    Object obj2 = textClassification;
                                    Object obj3 = context;
                                    switch (i10) {
                                        case 0:
                                            TextContextMenuItem textContextMenuItem2 = (TextContextMenuItem) obj3;
                                            AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl = (AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) obj2;
                                            Callback.u(menuItem);
                                            try {
                                                textContextMenuItem2.d.invoke(textActionModeCallbackImpl.f6090a);
                                                return true;
                                            } finally {
                                                Callback.v();
                                            }
                                        default:
                                            Context context2 = (Context) obj3;
                                            TextClassification textClassification2 = (TextClassification) obj2;
                                            Callback.u(menuItem);
                                            try {
                                                String text = textClassification2.getText();
                                                PendingIntent activity = PendingIntent.getActivity(context2, text != null ? text.hashCode() : 0, textClassification2.getIntent(), 201326592);
                                                if (Build.VERSION.SDK_INT >= 34) {
                                                    TextClassificationHelper34.a(activity);
                                                } else {
                                                    activity.send();
                                                }
                                                return true;
                                            } finally {
                                                Callback.v();
                                            }
                                    }
                                }
                            });
                        } else {
                            int i10 = i9 == 0 ? 1 : i4;
                            final RemoteAction remoteAction = textClassification.getActions().get(i9);
                            MenuItem menuItemAdd3 = menu.add(R.id.textAssist, i10 != 0 ? 16908353 : i4, i7, remoteAction.getTitle());
                            menuItemAdd3.setShowAsAction(i10 == 0 ? 0 : 2);
                            if (i10 != 0 || remoteAction.shouldShowIcon()) {
                                menuItemAdd3.setIcon(remoteAction.getIcon().loadDrawable(context));
                            }
                            menuItemAdd3.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.h
                                @Override // android.view.MenuItem.OnMenuItemClickListener
                                public final boolean onMenuItemClick(MenuItem menuItem) {
                                    RemoteAction remoteAction2 = remoteAction;
                                    Callback.u(menuItem);
                                    try {
                                        PendingIntent actionIntent = remoteAction2.getActionIntent();
                                        if (Build.VERSION.SDK_INT >= 34) {
                                            TextClassificationHelper34.a(actionIntent);
                                        } else {
                                            actionIntent.send();
                                        }
                                        return true;
                                    } finally {
                                        Callback.v();
                                    }
                                }
                            });
                        }
                    } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                        i8++;
                    }
                    i6++;
                    i4 = 0;
                }
                i7 = i2;
                i6++;
                i4 = 0;
            }
            return true;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TextContextMenuSessionImpl implements TextContextMenuSession {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BufferedChannel f6093a = ChannelKt.a(0, 7, null);

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.f6093a.b(Unit.f71739a);
        }
    }

    public AndroidTextContextMenuToolbarProvider(View view, Function1<? super TextActionModeCallback, ? extends TextActionModeCallback> function1, Function0<? extends LayoutCoordinates> function0) {
        this.f6082a = view;
        this.f6083b = function1;
        this.f6084c = function0;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object a(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Object objB = this.d.b(MutatePriority.Default, new AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(this, textContextMenuDataProvider, null), suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }
}
