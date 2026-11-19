.class Lcom/sightcall/universal/agent/Identity$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field acceptConsent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "accept-consent"
    .end annotation
.end field

.field connectedAt:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "connected-at"
    .end annotation
.end field

.field device:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device"
    .end annotation
.end field

.field displayName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "displayname"
    .end annotation
.end field

.field email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "email-address"
    .end annotation
.end field

.field fcmToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "fcm-token"
    .end annotation
.end field

.field googleAppId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field isTest:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "test"
    .end annotation
.end field

.field language:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "language"
    .end annotation
.end field

.field login:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "login"
    .end annotation
.end field

.field osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os-version"
    .end annotation
.end field

.field phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "phone-number"
    .end annotation
.end field

.field recording:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recording"
    .end annotation
.end field

.field registeredAt:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "registered-at"
    .end annotation
.end field

.field requireConsent:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "require-consent"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
