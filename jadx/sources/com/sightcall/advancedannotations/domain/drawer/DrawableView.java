package com.sightcall.advancedannotations.domain.drawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\fH\u0014R(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;", "Landroid/view/View;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "onDraw", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "getOnDraw", "()Lkotlin/jvm/functions/Function1;", "setOnDraw", "(Lkotlin/jvm/functions/Function1;)V", "canvas", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DrawableView extends View {
    private Function1<? super Canvas, Unit> onDraw;

    public /* synthetic */ DrawableView(Context context, AttributeSet attributeSet, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public final Function1<Canvas, Unit> getOnDraw() {
        return this.onDraw;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        Function1<? super Canvas, Unit> function1 = this.onDraw;
        if (function1 != null) {
            function1.invoke(canvas);
        }
    }

    public final void setOnDraw(Function1<? super Canvas, Unit> function1) {
        this.onDraw = function1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DrawableView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawableView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        context.getClass();
        setClickable(false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DrawableView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }
}
