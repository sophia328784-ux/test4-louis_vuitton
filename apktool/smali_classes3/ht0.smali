.class public final synthetic Lht0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/domain/repository/AppConfigRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;I)V
    .locals 0

    iput p2, p0, Lht0;->b:I

    iput-object p1, p0, Lht0;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lht0;->b:I

    iget-object p0, p0, Lht0;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
