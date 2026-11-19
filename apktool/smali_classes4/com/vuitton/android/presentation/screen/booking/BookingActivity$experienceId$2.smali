.class final Lcom/vuitton/android/presentation/screen/booking/BookingActivity$experienceId$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/booking/BookingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/BookingActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/BookingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingActivity$experienceId$2;->b:Lcom/vuitton/android/presentation/screen/booking/BookingActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingActivity$experienceId$2;->b:Lcom/vuitton/android/presentation/screen/booking/BookingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_experience_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
