.class public final synthetic Lt01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lt01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt01;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lt01;->d:I

    iput-object p3, p0, Lt01;->e:Ljava/lang/String;

    iput p4, p0, Lt01;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;II)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lt01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt01;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lt01;->e:Ljava/lang/String;

    iput p3, p0, Lt01;->d:I

    iput p4, p0, Lt01;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lt01;->b:I

    iget v1, p0, Lt01;->f:I

    iget-object v2, p0, Lt01;->e:Ljava/lang/String;

    iget v3, p0, Lt01;->d:I

    iget-object p0, p0, Lt01;->c:Landroidx/compose/ui/Modifier;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {v3, p2, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/TransferCertificateConfirmationComposableKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p2, v3, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p2, v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->c(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
