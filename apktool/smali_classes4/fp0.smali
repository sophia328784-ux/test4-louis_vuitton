.class public final synthetic Lfp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;I)V
    .locals 0

    iput p2, p0, Lfp0;->b:I

    iput-object p1, p0, Lfp0;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfp0;->b:I

    iget-object p0, p0, Lfp0;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->PORTAL:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Gb()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
