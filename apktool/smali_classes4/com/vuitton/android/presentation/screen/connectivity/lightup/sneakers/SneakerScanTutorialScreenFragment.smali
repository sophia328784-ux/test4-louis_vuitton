.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerScanTutorialScreenFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

.field public static final synthetic M:[Lkotlin/reflect/KProperty;

.field public static final N:Ljava/lang/String;


# instance fields
.field public final F:Lkotlin/Lazy;

.field public final G:Lkotlin/Lazy;

.field public final H:Lkotlin/Lazy;

.field public final I:Lkotlin/Lazy;

.field public final J:Lkotlin/Lazy;

.field public final K:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->M:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    const-string v0, "SneakerScanTutorialScreenFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d007a

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerScanTutorialScreenFragment;-><init>(I)V

    new-instance v0, Lzz0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->F:Lkotlin/Lazy;

    new-instance v0, Lzz0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->G:Lkotlin/Lazy;

    new-instance v0, Lzz0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->H:Lkotlin/Lazy;

    new-instance v0, Lzz0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->I:Lkotlin/Lazy;

    new-instance v0, Lzz0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->J:Lkotlin/Lazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->K:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerScanTutorialScreenFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->M:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->K:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->F:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->G:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%s/%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1406a2

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->H:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->f:Landroid/widget/TextView;

    new-instance v2, Lzz0;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    new-instance v3, La01;

    invoke-direct {v3, p0, v1}, La01;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0, v2, v3, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->d:Landroid/widget/ImageView;

    new-instance v1, Lzz0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lzz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    new-instance v2, Lrp0;

    const/16 v3, 0x17

    invoke-direct {v2, p1, p0, v3}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1, v2, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->c:Landroid/widget/Button;

    new-instance v1, La01;

    invoke-direct {v1, p0, v4}, La01;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentSneakerScanTutorialStepBinding;->b:Landroid/widget/Button;

    new-instance v0, La01;

    invoke-direct {v0, p0, p2}, La01;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
