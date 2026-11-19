.class Lcom/sightcall/universal/internal/ui/SurveyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/SurveyActivity;->displayAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/SurveyActivity;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/SurveyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity$2;->this$0:Lcom/sightcall/universal/internal/ui/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity$2;->this$0:Lcom/sightcall/universal/internal/ui/SurveyActivity;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->v(Lcom/sightcall/universal/internal/ui/SurveyActivity;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
