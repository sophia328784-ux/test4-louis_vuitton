.class public final synthetic Lu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;I)V
    .locals 0

    iput p2, p0, Lu6;->b:I

    iput-object p1, p0, Lu6;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu6;->b:I

    iget-object p0, p0, Lu6;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
