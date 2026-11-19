.class public final synthetic Lup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V
    .locals 0

    iput p2, p0, Lup;->b:I

    iput-object p1, p0, Lup;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lup;->b:I

    iget-object p0, p0, Lup;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->IMMERSIVE:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->FEED:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->CONTACTABILITY:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Gb()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
