.class public final synthetic Ldk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;I)V
    .locals 0

    iput p2, p0, Ldk;->b:I

    iput-object p1, p0, Ldk;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Ldk;->b:I

    iget-object v0, v0, Ldk;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    const/16 v15, 0xfff

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->f(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
