.class public final Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViaPartnersClickEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;",
        "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x54e4c3f0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ViaPartnersClickEvent"

    return-object p0
.end method
