package com.sightcall.pratik.extensions;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.pratik.KeyEvent;
import com.sightcall.pratik.extensions.ViewExtensionsKt;
import com.sightcall.pratik.mappers.KeyEventMappersKt;
import defpackage.v40;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00060\u0004H\u0007\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0002¨\u0006\t"}, d2 = {"setOnKeyListeners", "", "Landroid/view/View;", DbParams.TABLE_EVENTS, "", "Lcom/sightcall/pratik/KeyEvent;", "Lkotlin/Function0;", "setupKeyEvent", MvelScriptManager.VAR_EVENT, "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewExtensionsKt {
    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public static final void setOnKeyListeners(View view, final Map<KeyEvent, ? extends Function0<Unit>> map) {
        view.getClass();
        map.getClass();
        Iterator<Map.Entry<KeyEvent, ? extends Function0<Unit>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            setupKeyEvent(view, it.next().getKey());
        }
        view.setOnKeyListener(new View.OnKeyListener() { // from class: v51
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i2, android.view.KeyEvent keyEvent) {
                return ViewExtensionsKt.setOnKeyListeners$lambda$1(map, view2, i2, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setOnKeyListeners$lambda$1(Map map, View view, int i2, android.view.KeyEvent keyEvent) {
        Function0 function0;
        KeyEvent keyEvent2 = KeyEventMappersKt.toKeyEvent(i2);
        if (keyEvent2 == null || (function0 = (Function0) map.get(keyEvent2)) == null) {
            return false;
        }
        function0.mo47invoke();
        return true;
    }

    private static final void setupKeyEvent(View view, KeyEvent keyEvent) {
        if (!Intrinsics.c(keyEvent, KeyEvent.BackButton.INSTANCE)) {
            v40.g();
        } else {
            view.setFocusableInTouchMode(true);
            view.requestFocus();
        }
    }
}
