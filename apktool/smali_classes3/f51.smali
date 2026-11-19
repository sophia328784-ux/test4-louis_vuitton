.class public final synthetic Lf51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;

.field public final synthetic d:Lcom/sightcall/session/Reference$UseCase$Consent;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;I)V
    .locals 0

    iput p3, p0, Lf51;->b:I

    iput-object p1, p0, Lf51;->c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    iput-object p2, p0, Lf51;->d:Lcom/sightcall/session/Reference$UseCase$Consent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf51;->b:I

    iget-object v1, p0, Lf51;->d:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-object p0, p0, Lf51;->c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->z(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->A(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->v(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
