package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FloatingViewItem extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f37023b = 46.0f;
    protected static int n;
    protected static int o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.networkbench.agent.impl.c.e f37024a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Activity f37025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected g f37026f;
    protected WindowManager.LayoutParams g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected Button f37027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected k f37028i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f37029j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected String f37030k;
    protected boolean l;
    protected String m;

    public FloatingViewItem(Activity activity, k kVar) {
        super(activity);
        this.f37024a = com.networkbench.agent.impl.c.f.a();
        this.f37025e = activity;
        n = getDisplayMetrics().widthPixels - 200;
        o = getDisplayMetrics().heightPixels - 300;
        Button button = new Button(activity);
        this.f37027h = button;
        button.setBackground(a(-11440145, new OvalShape()));
        this.f37026f = g.a(this.f37025e);
        this.g = j();
        this.l = false;
        this.f37028i = kVar;
        this.f37029j = false;
        this.m = "";
    }

    public LayerDrawable a(int i2, Shape shape) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{b(i2, shape)});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        return layerDrawable;
    }

    public abstract void a();

    public abstract void a(MotionEvent motionEvent, int i2, int i3);

    public void b() {
        for (FloatingViewItem floatingViewItem : this.f37028i.b()) {
            if (!a(floatingViewItem)) {
                floatingViewItem.setVisible(0);
            }
        }
    }

    public void c() {
    }

    public void f() {
        if (this.l) {
            this.l = false;
        } else {
            this.l = true;
        }
    }

    public void g() {
        for (FloatingViewItem floatingViewItem : this.f37028i.b()) {
            if (!a(floatingViewItem)) {
                floatingViewItem.setVisible(4);
            }
        }
    }

    public float getBtnRadius() {
        return f37023b;
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.f37025e.getResources().getDisplayMetrics();
    }

    public int getPosBeginX() {
        return n;
    }

    public int getPosBeginY() {
        return o;
    }

    public String getViewImageBmpPath() {
        return this.f37030k;
    }

    public void h() {
        setViewImage();
        setViewXY(getPosBeginX(), getPosBeginY());
        this.f37026f.a(this.f37027h, this.g);
        if (!this.f37029j) {
            setVisible(4);
        }
        this.f37029j = true;
    }

    public void i() {
        this.f37026f.a(this.f37027h);
    }

    public WindowManager.LayoutParams j() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 51;
        layoutParams.type = 2038;
        layoutParams.format = 1;
        layoutParams.flags = 327976;
        float f2 = getDisplayMetrics().density;
        layoutParams.width = (int) (getBtnRadius() * f2);
        layoutParams.height = (int) (getBtnRadius() * f2);
        return layoutParams;
    }

    public boolean k() {
        return true;
    }

    public void l() {
        setViewXY(getPosBeginX(), getPosBeginY());
        this.f37026f.b(this.f37027h, this.g);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f37027h.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f37027h.setOnTouchListener(onTouchListener);
    }

    public void setViewImage() {
        if (TextUtils.isEmpty(this.f37030k)) {
            return;
        }
        try {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.f37030k);
            Button button = this.f37027h;
            if (bitmapDecodeFile != null) {
                button.setText("");
                this.f37027h.setBackground(new BitmapDrawable(this.f37025e.getResources(), bitmapDecodeFile));
            } else {
                button.setText(this.m);
            }
            this.f37027h.invalidate();
        } catch (Throwable th) {
            this.f37024a.a("set view image error", th);
        }
    }

    public void setViewXY(int i2, int i3) {
        WindowManager.LayoutParams layoutParams = this.g;
        layoutParams.x = i2;
        layoutParams.y = i3;
    }

    public void setVisible(int i2) {
        this.f37027h.setVisibility(i2);
    }

    public void setmContext(Activity activity) {
        this.f37025e = activity;
    }

    public boolean a(FloatingViewItem floatingViewItem) {
        return false;
    }

    private ShapeDrawable b(int i2, Shape shape) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(shape);
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }
}
