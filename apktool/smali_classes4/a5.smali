.class public final synthetic La5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p0, p0, La5;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->I(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
