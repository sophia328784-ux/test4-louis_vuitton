.class public final synthetic Lio0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;I)V
    .locals 0

    iput p2, p0, Lio0;->b:I

    iput-object p1, p0, Lio0;->c:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lio0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lio0;->c:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "AUTOCOMPLETE_CONTEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "PREVIOUS_PLACE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :pswitch_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->H(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;)Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
