.class public final synthetic Ljw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljw0;->b:Z

    iput-object p2, p0, Ljw0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iput-object p3, p0, Ljw0;->d:Landroid/content/Context;

    iput p4, p0, Ljw0;->e:I

    iput-object p5, p0, Ljw0;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Ljw0;->b:Z

    iget-object v1, p0, Ljw0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v2, p0, Ljw0;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->e:Z

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    const v3, 0x7f14035e

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-static {p1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    iget v3, p0, Ljw0;->e:I

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v4, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f140322

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lkw0;

    const/4 v2, 0x1

    iget-object p0, p0, Ljw0;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v1, v2}, Lkw0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
