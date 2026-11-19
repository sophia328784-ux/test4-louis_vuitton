.class public final Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;->c:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;
    .locals 2

    const v0, 0x7f0d00a1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;

    invoke-direct {p1, p0, p0}, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p1

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
