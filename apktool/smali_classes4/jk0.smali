.class public final synthetic Ljk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;Ljava/lang/String;Landroid/content/Context;ILkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p6, p0, Ljk0;->b:I

    iput-object p1, p0, Ljk0;->c:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iput-object p2, p0, Ljk0;->d:Ljava/lang/String;

    iput-object p3, p0, Ljk0;->e:Landroid/content/Context;

    iput p4, p0, Ljk0;->f:I

    iput-object p5, p0, Ljk0;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Ljk0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f140367

    const/4 v4, 0x1

    iget-object v5, p0, Ljk0;->g:Lkotlin/jvm/functions/Function0;

    iget v6, p0, Ljk0;->f:I

    iget-object v7, p0, Ljk0;->e:Landroid/content/Context;

    iget-object v8, p0, Ljk0;->d:Ljava/lang/String;

    iget-object p0, p0, Ljk0;->c:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/semantics/Role;->f:I

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {p0, v2, v4, v6, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    new-instance p0, Lw11;

    const/4 v0, 0x3

    invoke-direct {p0, v5, v0}, Lw11;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {p1, v1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/semantics/Role;->f:I

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {p0, v2, v4, v6, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    new-instance p0, Lee0;

    const/16 v0, 0xc

    invoke-direct {p0, v5, v0}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {p1, v1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
