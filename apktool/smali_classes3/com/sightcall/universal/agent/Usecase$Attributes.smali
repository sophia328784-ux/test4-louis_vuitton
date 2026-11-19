.class Lcom/sightcall/universal/agent/Usecase$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field activeSpeaker:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .annotation runtime Lcom/sightcall/universal/api/FallbackEnumField;
        value = ""
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "active-speaker"
    .end annotation
.end field

.field agent:Lcom/sightcall/universal/agent/Usecase$Agent;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "agent"
    .end annotation
.end field

.field appointment:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "appointment"
    .end annotation
.end field

.field bars:[Lcom/sightcall/universal/agent/Usecase$Bar;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "bars"
    .end annotation
.end field

.field callDistribution:Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call-distribution"
    .end annotation
.end field

.field defaultMedia:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media-default"
    .end annotation
.end field

.field defaultMode:Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mode-default"
    .end annotation
.end field

.field guest:Lcom/sightcall/universal/agent/Usecase$Guest;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest"
    .end annotation
.end field

.field guestGpsOnStartup:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-gps-on-startup"
    .end annotation
.end field

.field hashValue:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hash-value"
    .end annotation
.end field

.field isDefault:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "is-default"
    .end annotation
.end field

.field multiparty:Lcom/sightcall/universal/agent/Usecase$Multiparty;
    .annotation runtime Lcom/sightcall/universal/agent/Usecase$MultipartyBoolean;
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "multiparty"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field ocrCollimatorRatio:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ocr-collimator-ratio"
    .end annotation
.end field

.field ocrSafeArea:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ocr-safe-area"
    .end annotation
.end field

.field pincodeDeletedAuto:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pincode-deleted-auto"
    .end annotation
.end field

.field recording:Lcom/sightcall/universal/agent/Usecase$Recording;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recording"
    .end annotation
.end field

.field referenceAutofill:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference-autofill"
    .end annotation
.end field

.field referenceRequired:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference-required"
    .end annotation
.end field

.field savePicture:Lcom/sightcall/universal/agent/Usecase$SavePicture;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "save-picture"
    .end annotation
.end field

.field sendEmail:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "send-email"
    .end annotation
.end field

.field sendPincode:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "send-pincode"
    .end annotation
.end field

.field sendSms:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "send-sms"
    .end annotation
.end field

.field showUrl:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "show-url"
    .end annotation
.end field

.field smsCountryDefault:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "sms-country-default"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
