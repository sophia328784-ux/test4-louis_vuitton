package androidx.cardview.widget;

/* JADX INFO: loaded from: classes2.dex */
class CardViewApi21Impl implements CardViewImpl {
    public final void a(CardView.AnonymousClass1 anonymousClass1, float f2) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.f3206a;
        CardView cardView = CardView.this;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f2 != roundRectDrawable.f3211e || roundRectDrawable.f3212f != useCompatPadding || roundRectDrawable.g != preventCornerOverlap) {
            roundRectDrawable.f3211e = f2;
            roundRectDrawable.f3212f = useCompatPadding;
            roundRectDrawable.g = preventCornerOverlap;
            roundRectDrawable.b(null);
            roundRectDrawable.invalidateSelf();
        }
        b(anonymousClass1);
    }

    public final void b(CardViewDelegate cardViewDelegate) {
        float f2;
        float f3;
        if (!cardViewDelegate.a()) {
            cardViewDelegate.c(0, 0, 0, 0);
            return;
        }
        float f4 = ((RoundRectDrawable) cardViewDelegate.b()).f3211e;
        float f5 = ((RoundRectDrawable) cardViewDelegate.b()).f3208a;
        if (cardViewDelegate.d()) {
            f2 = (float) (((1.0d - RoundRectDrawableWithShadow.f3217a) * ((double) f5)) + ((double) f4));
        } else {
            int i2 = RoundRectDrawableWithShadow.f3218b;
            f2 = f4;
        }
        int iCeil = (int) Math.ceil(f2);
        if (cardViewDelegate.d()) {
            f3 = (float) (((1.0d - RoundRectDrawableWithShadow.f3217a) * ((double) f5)) + ((double) (f4 * 1.5f)));
        } else {
            f3 = f4 * 1.5f;
        }
        int iCeil2 = (int) Math.ceil(f3);
        cardViewDelegate.c(iCeil, iCeil2, iCeil, iCeil2);
    }
}
