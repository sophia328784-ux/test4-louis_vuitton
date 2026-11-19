package com.airbnb.lottie.compose;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;", "", "width", "height", "<init>", "(II)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class LottieAnimationSizeElement extends ModifierNodeElement<LottieAnimationSizeNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f22000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f22001c;

    public LottieAnimationSizeElement(int i2, int i3) {
        this.f22000b = i2;
        this.f22001c = i3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new LottieAnimationSizeNode(this.f22000b, this.f22001c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LottieAnimationSizeElement)) {
            return false;
        }
        LottieAnimationSizeElement lottieAnimationSizeElement = (LottieAnimationSizeElement) obj;
        return this.f22000b == lottieAnimationSizeElement.f22000b && this.f22001c == lottieAnimationSizeElement.f22001c;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        LottieAnimationSizeNode lottieAnimationSizeNode = (LottieAnimationSizeNode) node;
        lottieAnimationSizeNode.getClass();
        lottieAnimationSizeNode.p = this.f22000b;
        lottieAnimationSizeNode.q = this.f22001c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f22001c) + (Integer.hashCode(this.f22000b) * 31);
    }

    public final String toString() {
        return fc.f(this.f22000b, this.f22001c, "LottieAnimationSizeElement(width=", ", height=", ")");
    }
}
