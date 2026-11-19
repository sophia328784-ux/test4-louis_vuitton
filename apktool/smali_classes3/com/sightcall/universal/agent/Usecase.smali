.class public Lcom/sightcall/universal/agent/Usecase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Usecase$Attributes;,
        Lcom/sightcall/universal/agent/Usecase$CallDistribution;,
        Lcom/sightcall/universal/agent/Usecase$Agent;,
        Lcom/sightcall/universal/agent/Usecase$Guest;,
        Lcom/sightcall/universal/agent/Usecase$Multiparty;,
        Lcom/sightcall/universal/agent/Usecase$Attendee;,
        Lcom/sightcall/universal/agent/Usecase$Bar;,
        Lcom/sightcall/universal/agent/Usecase$VideoProfile;,
        Lcom/sightcall/universal/agent/Usecase$VideoCapture;,
        Lcom/sightcall/universal/agent/Usecase$Chat;,
        Lcom/sightcall/universal/agent/Usecase$Survey;,
        Lcom/sightcall/universal/agent/Usecase$SavePicture;,
        Lcom/sightcall/universal/agent/Usecase$User;,
        Lcom/sightcall/universal/agent/Usecase$Recording;,
        Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;,
        Lcom/sightcall/universal/agent/Usecase$DefaultMedia;,
        Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;,
        Lcom/sightcall/universal/agent/Usecase$MultipartyBoolean;,
        Lcom/sightcall/universal/agent/Usecase$PickupMode;,
        Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    }
.end annotation


# static fields
.field private static final EMPTY_BAR:[Lcom/sightcall/universal/internal/view/CallButton;

.field public static final TYPE:Ljava/lang/String; = "usecases"


# instance fields
.field public acdRequestTimeout:I

.field attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field private bars:Ljava/util/Map;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sightcall/universal/agent/Usecase$Bar$Role;",
            "[",
            "Lcom/sightcall/universal/internal/view/CallButton;",
            ">;"
        }
    .end annotation
.end field

.field public customizations:Lcom/sightcall/session/Reference$Customization;

.field final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field public languageId:Ljava/lang/Integer;

.field public liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

.field public locationId:Ljava/lang/Integer;

.field public productId:Ljava/lang/Integer;

.field public propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

.field public takeUhdSnapshot:Z

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field

.field public useAdvancedAnnotations:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/internal/view/CallButton;

    sput-object v0, Lcom/sightcall/universal/agent/Usecase;->EMPTY_BAR:[Lcom/sightcall/universal/internal/view/CallButton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "usecases"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase;->takeUhdSnapshot:Z

    iput-object p1, p0, Lcom/sightcall/universal/agent/Usecase;->id:Ljava/lang/String;

    return-void
.end method

.method private static createBar([Lcom/sightcall/universal/internal/view/CallButton;Lcom/sightcall/universal/agent/Usecase$Bar$Role;)Lcom/sightcall/universal/agent/Usecase$Bar;
    .locals 5

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Bar;-><init>()V

    iput-object p1, v0, Lcom/sightcall/universal/agent/Usecase$Bar;->role:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p0

    new-array p1, p1, [Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    iput-object p1, v0, Lcom/sightcall/universal/agent/Usecase$Bar;->buttons:[Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    const/4 p1, 0x0

    :goto_0
    iget-object v1, v0, Lcom/sightcall/universal/agent/Usecase$Bar;->buttons:[Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    new-instance v2, Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    aget-object v3, p0, p1

    iget-object v3, v3, Lcom/sightcall/universal/internal/view/CallButton;->key:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sightcall/universal/agent/Usecase$Bar$Button;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, p1

    move p1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static from(Lcom/sightcall/session/Reference;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/agent/Usecase;
    .locals 4

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Attributes;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Attributes;-><init>()V

    new-instance v1, Lcom/sightcall/universal/agent/Usecase;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v2, v2, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sightcall/universal/agent/Usecase;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->hashValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/sightcall/universal/model/Config;->acdMask(Ljava/lang/Long;)Lcom/sightcall/universal/model/Config;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/sightcall/universal/model/Config;->acdValue(Ljava/lang/Long;)Lcom/sightcall/universal/model/Config;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iget-object v3, v2, Lcom/sightcall/session/Reference$Provider;->appId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/sightcall/universal/model/Config;->appId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object v3, v2, Lcom/sightcall/session/Reference$Provider;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/sightcall/universal/model/Config;->hap(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object v3, v2, Lcom/sightcall/session/Reference$Provider;->reportChatContent:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lcom/sightcall/universal/model/Config;->reportChatContent(Ljava/lang/Boolean;)Lcom/sightcall/universal/model/Config;

    iget v2, v2, Lcom/sightcall/session/Reference$Provider;->deadPartyTimeout:I

    invoke-virtual {p1, v2}, Lcom/sightcall/universal/model/Config;->deadPartyTimeout(I)Lcom/sightcall/universal/model/Config;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/sightcall/universal/agent/Usecase;->productId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/sightcall/universal/agent/Usecase;->locationId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/sightcall/universal/agent/Usecase;->languageId:Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sightcall/universal/agent/Usecase;->takeUhdSnapshot:Z

    iget-object v2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v3, v2, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iput-object v3, v1, Lcom/sightcall/universal/agent/Usecase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget v3, v2, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    iput v3, v1, Lcom/sightcall/universal/agent/Usecase;->acdRequestTimeout:I

    iget-object v3, v2, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    iput-object v3, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->ocrCollimatorRatio:Ljava/lang/Double;

    iget-object v3, v2, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    iput-object v3, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->ocrSafeArea:Ljava/lang/Double;

    iget-object v3, v2, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->name:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    iput-boolean v3, v1, Lcom/sightcall/universal/agent/Usecase;->useAdvancedAnnotations:Z

    iget-object v2, v2, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    sget-object v3, Lcom/sightcall/session/Reference$CallDistribution$Acd;->INSTANCE:Lcom/sightcall/session/Reference$CallDistribution$Acd;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->ACD:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->callDistribution:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sightcall/session/Reference$CallDistribution$Code;->INSTANCE:Lcom/sightcall/session/Reference$CallDistribution$Code;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->callDistribution:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->DIRECT:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->callDistribution:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    :goto_0
    new-instance v2, Lcom/sightcall/universal/agent/Usecase$Agent;

    invoke-direct {v2}, Lcom/sightcall/universal/agent/Usecase$Agent;-><init>()V

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->agent:Lcom/sightcall/universal/agent/Usecase$Agent;

    new-instance v2, Lcom/sightcall/universal/agent/Usecase$Guest;

    invoke-direct {v2}, Lcom/sightcall/universal/agent/Usecase$Guest;-><init>()V

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    new-instance v2, Lcom/sightcall/universal/agent/Usecase$Multiparty;

    invoke-direct {v2}, Lcom/sightcall/universal/agent/Usecase$Multiparty;-><init>()V

    iput-object v2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->multiparty:Lcom/sightcall/universal/agent/Usecase$Multiparty;

    new-instance v3, Lcom/sightcall/universal/agent/Usecase$Attendee;

    invoke-direct {v3}, Lcom/sightcall/universal/agent/Usecase$Attendee;-><init>()V

    iput-object v3, v2, Lcom/sightcall/universal/agent/Usecase$Multiparty;->attendee:Lcom/sightcall/universal/agent/Usecase$Attendee;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v2, v2, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    sget-object v3, Lcom/sightcall/session/Reference$UserRole$Guest;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Guest;

    if-ne v2, v3, :cond_2

    invoke-static {v0, p0}, Lcom/sightcall/universal/agent/Usecase;->setGuest(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/Reference;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sightcall/session/Reference$UserRole$Attendee;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Attendee;

    if-ne v2, v3, :cond_3

    invoke-static {v0, p0}, Lcom/sightcall/universal/agent/Usecase;->setAttendee(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/Reference;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v2, v2, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    invoke-static {v2, p2}, Lcom/sightcall/universal/internal/view/CallButton;->valuesOf(Ljava/util/List;Z)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v3, v3, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    invoke-static {v3, p2}, Lcom/sightcall/universal/internal/view/CallButton;->valuesOf(Ljava/util/List;Z)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p2

    sget-object v3, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->MOBILE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-static {v2, v3}, Lcom/sightcall/universal/agent/Usecase;->createBar([Lcom/sightcall/universal/internal/view/CallButton;Lcom/sightcall/universal/agent/Usecase$Bar$Role;)Lcom/sightcall/universal/agent/Usecase$Bar;

    move-result-object v2

    sget-object v3, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->ATTENDEE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-static {p2, v3}, Lcom/sightcall/universal/agent/Usecase;->createBar([Lcom/sightcall/universal/internal/view/CallButton;Lcom/sightcall/universal/agent/Usecase$Bar$Role;)Lcom/sightcall/universal/agent/Usecase$Bar;

    move-result-object p2

    filled-new-array {v2, p2}, [Lcom/sightcall/universal/agent/Usecase$Bar;

    move-result-object p2

    iput-object p2, v0, Lcom/sightcall/universal/agent/Usecase$Attributes;->bars:[Lcom/sightcall/universal/agent/Usecase$Bar;

    iget-object p2, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    iput-object p2, v1, Lcom/sightcall/universal/agent/Usecase;->customizations:Lcom/sightcall/session/Reference$Customization;

    iget-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v0, p2, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iput-object v0, v1, Lcom/sightcall/universal/agent/Usecase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object p2, p2, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/model/Config;->displayNameMode(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object p2, p2, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/model/Config;->displayName(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-boolean p2, p2, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/model/Config;->ignoreConsent(Z)Lcom/sightcall/universal/model/Config;

    iget-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object p2, p2, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/model/Config;->reference(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object p0, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/model/Config;->caseReportId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    return-object v1
.end method

.method private parseBar(Lcom/sightcall/universal/agent/Usecase$Bar;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Usecase$Bar;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/view/CallButton;",
            ">;"
        }
    .end annotation

    iget-object p0, p1, Lcom/sightcall/universal/agent/Usecase$Bar;->buttons:[Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->role:Ljava/lang/String;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/CallButton;->parse(Ljava/lang/String;)Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private parseBars(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Usecase$Bar$Role;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/view/CallButton;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->bars()[Lcom/sightcall/universal/agent/Usecase$Bar;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/sightcall/universal/agent/Usecase$Bar;->role:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    if-ne v4, p1, :cond_1

    invoke-direct {p0, v3}, Lcom/sightcall/universal/agent/Usecase;->parseBar(Lcom/sightcall/universal/agent/Usecase$Bar;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private static setAttendee(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/Reference;)V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Multiparty;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Multiparty;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->multiparty:Lcom/sightcall/universal/agent/Usecase$Multiparty;

    new-instance v1, Lcom/sightcall/universal/agent/Usecase$Attendee;

    invoke-direct {v1}, Lcom/sightcall/universal/agent/Usecase$Attendee;-><init>()V

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$Multiparty;->attendee:Lcom/sightcall/universal/agent/Usecase$Attendee;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {v0}, Lcom/sightcall/universal/agent/Usecase;->toVideoProfile(Lcom/sightcall/session/Reference$VideoProfile;)Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object v0

    iput-object v0, v1, Lcom/sightcall/universal/agent/Usecase$User;->videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {v0}, Lcom/sightcall/universal/agent/Usecase;->toVideoCapture(Lcom/sightcall/session/Reference$CameraSide;)Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object v0

    iput-object v0, v1, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    iget-object p1, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-boolean v0, p1, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    iput-boolean v0, v1, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    iget-boolean v0, p1, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    iput-boolean v0, v1, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-object v0, p1, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$User;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-boolean p1, p1, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->alwaysVisible:Z

    return-void
.end method

.method private static setGuest(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/Reference;)V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Guest;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Guest;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-object p0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {p0}, Lcom/sightcall/universal/agent/Usecase;->toVideoProfile(Lcom/sightcall/session/Reference$VideoProfile;)Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object p0

    iput-object p0, v0, Lcom/sightcall/universal/agent/Usecase$User;->videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    iget-object p0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {p0}, Lcom/sightcall/universal/agent/Usecase;->toVideoCapture(Lcom/sightcall/session/Reference$CameraSide;)Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object p0

    iput-object p0, v0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    iget-object p0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->pointer:Z

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    iput-boolean p0, v0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    new-instance p0, Lcom/sightcall/universal/agent/Usecase$Chat;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/Usecase$Chat;-><init>()V

    iput-object p0, v0, Lcom/sightcall/universal/agent/Usecase$Guest;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    iget-object v1, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget v2, v1, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    iput v2, p0, Lcom/sightcall/universal/agent/Usecase$Chat;->messageOverlayTimeout:I

    iget-boolean v2, v1, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/agent/Usecase$Chat;->quickbar:Z

    iget-boolean p0, v1, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    iput-boolean p0, v0, Lcom/sightcall/universal/agent/Usecase$Guest;->allowUsbCamera:Z

    iget-boolean p0, v1, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    iput-boolean p0, v0, Lcom/sightcall/universal/agent/Usecase$Guest;->alwaysVisible:Z

    iget-object p0, v1, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->backport(Lcom/sightcall/session/Reference$UseCase$Survey;)Lcom/sightcall/universal/agent/Usecase$Survey;

    move-result-object p0

    iput-object p0, v0, Lcom/sightcall/universal/agent/Usecase$User;->survey:Lcom/sightcall/universal/agent/Usecase$Survey;

    :cond_0
    iget-object p0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    iput-boolean p0, v0, Lcom/sightcall/universal/agent/Usecase$Guest;->guestVideoWhileTakePicture:Z

    return-void
.end method

.method private static toVideoCapture(Lcom/sightcall/session/Reference$CameraSide;)Lcom/sightcall/universal/agent/Usecase$VideoCapture;
    .locals 1

    instance-of v0, p0, Lcom/sightcall/session/Reference$CameraSide$Front;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->FRONT:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    return-object p0

    :cond_0
    instance-of p0, p0, Lcom/sightcall/session/Reference$CameraSide$Back;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->REAR:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toVideoProfile(Lcom/sightcall/session/Reference$VideoProfile;)Lcom/sightcall/universal/agent/Usecase$VideoProfile;
    .locals 1

    instance-of v0, p0, Lcom/sightcall/session/Reference$VideoProfile$Sd;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->SD:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    return-object p0

    :cond_0
    instance-of p0, p0, Lcom/sightcall/session/Reference$VideoProfile$Md;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->MD:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static updateAttendee(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/ReferenceUpdate;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->multiparty:Lcom/sightcall/universal/agent/Usecase$Multiparty;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase$Multiparty;->attendee:Lcom/sightcall/universal/agent/Usecase$Attendee;

    iget-object v1, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v1, v1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {v1}, Lcom/sightcall/universal/agent/Usecase;->toVideoProfile(Lcom/sightcall/session/Reference$VideoProfile;)Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    iget-object v1, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v1, v1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {v1}, Lcom/sightcall/universal/agent/Usecase;->toVideoCapture(Lcom/sightcall/session/Reference$CameraSide;)Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    iget-object p1, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-boolean v1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    iget-boolean v1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-boolean p1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->alwaysVisible:Z

    return-void
.end method

.method private static updateGuest(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/ReferenceUpdate;)V
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-object v0, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {v0}, Lcom/sightcall/universal/agent/Usecase;->toVideoProfile(Lcom/sightcall/session/Reference$VideoProfile;)Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$User;->videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    iget-object v0, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {v0}, Lcom/sightcall/universal/agent/Usecase;->toVideoCapture(Lcom/sightcall/session/Reference$CameraSide;)Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    iget-object v0, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-boolean v1, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    iput-boolean v1, p0, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    iget-boolean v1, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    iput-boolean v1, p0, Lcom/sightcall/universal/agent/Usecase$User;->pointer:Z

    iget-boolean v0, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Chat;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Chat;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    iget-object p1, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget v1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    iput v1, v0, Lcom/sightcall/universal/agent/Usecase$Chat;->messageOverlayTimeout:I

    iget-boolean v1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$Chat;->quickbar:Z

    iget-boolean v0, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->allowUsbCamera:Z

    iget-boolean v0, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->alwaysVisible:Z

    iget-boolean p1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->guestVideoWhileTakePicture:Z

    return-void
.end method


# virtual methods
.method public activeSpeaker()Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->activeSpeaker:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    return-object p0
.end method

.method public agent()Lcom/sightcall/universal/agent/Usecase$Agent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->agent:Lcom/sightcall/universal/agent/Usecase$Agent;

    return-object p0
.end method

.method public bars()[Lcom/sightcall/universal/agent/Usecase$Bar;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->bars:[Lcom/sightcall/universal/agent/Usecase$Bar;

    return-object p0
.end method

.method public buttons(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sightcall/universal/internal/view/CallButton;

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/Usecase;->parseBars(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object v1, v1, Lcom/sightcall/universal/agent/Usecase$Attributes;->agent:Lcom/sightcall/universal/agent/Usecase$Agent;

    iget-boolean v1, v1, Lcom/sightcall/universal/agent/Usecase$Agent;->chatAsBoolean:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sget-object v2, Lcom/sightcall/universal/internal/view/CallButton;->MESSAGES:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/sightcall/universal/agent/Usecase;->EMPTY_BAR:[Lcom/sightcall/universal/internal/view/CallButton;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/view/CallButton;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->bars:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->callDistribution:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    return-object p0
.end method

.method public defaultMedia()Lcom/sightcall/universal/agent/Code$Media;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->defaultMedia:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lcom/sightcall/universal/agent/Code$Media;->URL:Lcom/sightcall/universal/agent/Code$Media;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sightcall/universal/agent/Code$Media;->EMAIL:Lcom/sightcall/universal/agent/Code$Media;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sightcall/universal/agent/Code$Media;->SMS:Lcom/sightcall/universal/agent/Code$Media;

    return-object p0
.end method

.method public getSurvey(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/internal/model/Survey;
    .locals 1

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->agent:Lcom/sightcall/universal/agent/Usecase$Agent;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->survey:Lcom/sightcall/universal/agent/Usecase$Survey;

    invoke-static {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->with(Lcom/sightcall/universal/agent/Usecase$Survey;)Lcom/sightcall/universal/internal/model/Survey;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->survey:Lcom/sightcall/universal/agent/Usecase$Survey;

    invoke-static {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->with(Lcom/sightcall/universal/agent/Usecase$Survey;)Lcom/sightcall/universal/internal/model/Survey;

    move-result-object p0

    return-object p0
.end method

.method public guest()Lcom/sightcall/universal/agent/Usecase$Guest;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    return-object p0
.end method

.method public guestGpsOnStartup()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guestGpsOnStartup:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->hashValue:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->id:Ljava/lang/String;

    return-object p0
.end method

.method public idInt()I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public isAllowed(Lcom/sightcall/universal/agent/Code$Media;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$agent$Code$Media:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->showUrl:Z

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->sendEmail:Z

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->sendSms:Z

    return p0
.end method

.method public isReferenceAutifill()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->referenceAutofill:Z

    return p0
.end method

.method public isReferenceRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->referenceRequired:Z

    return p0
.end method

.method public isUsbCameraAllowed(Lcom/sightcall/universal/model/Config;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->allowUsbCamera:Z

    return p0
.end method

.method public localUdp()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->customizations:Lcom/sightcall/session/Reference$Customization;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public ocrRatio()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->ocrCollimatorRatio:Ljava/lang/Double;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ocrSafeArea()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->ocrSafeArea:Ljava/lang/Double;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public partner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->customizations:Lcom/sightcall/session/Reference$Customization;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    return-object p0
.end method

.method public pincodeAutoDelete()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->pincodeDeletedAuto:Z

    return p0
.end method

.method public recording()Lcom/sightcall/universal/agent/Usecase$Recording;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->recording:Lcom/sightcall/universal/agent/Usecase$Recording;

    return-object p0
.end method

.method public savePicture()Lcom/sightcall/universal/agent/Usecase$SavePicture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->savePicture:Lcom/sightcall/universal/agent/Usecase$SavePicture;

    return-object p0
.end method

.method public sslPlugin()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->customizations:Lcom/sightcall/session/Reference$Customization;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    return p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "usecases"

    return-object p0
.end method

.method public updateRole(Lcom/sightcall/session/ReferenceUpdate;)V
    .locals 2

    iget-object v0, p1, Lcom/sightcall/session/ReferenceUpdate;->useCase:Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    sget-object v1, Lcom/sightcall/session/Reference$UserRole$Guest;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Guest;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    invoke-static {p0, p1}, Lcom/sightcall/universal/agent/Usecase;->updateGuest(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/ReferenceUpdate;)V

    return-void

    :cond_0
    sget-object v1, Lcom/sightcall/session/Reference$UserRole$Attendee;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Attendee;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    invoke-static {p0, p1}, Lcom/sightcall/universal/agent/Usecase;->updateAttendee(Lcom/sightcall/universal/agent/Usecase$Attributes;Lcom/sightcall/session/ReferenceUpdate;)V

    :cond_1
    return-void
.end method

.method public usapTurn()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->customizations:Lcom/sightcall/session/Reference$Customization;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    return p0
.end method

.method public user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->multiparty:Lcom/sightcall/universal/agent/Usecase$Multiparty;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Multiparty;->attendee:Lcom/sightcall/universal/agent/Usecase$Attendee;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->agent:Lcom/sightcall/universal/agent/Usecase$Agent;

    return-object p0
.end method

.method public videoOutPointer(Lcom/sightcall/universal/model/Config;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->pointer:Z

    return p0
.end method

.method public videoOutWhilePicture(Lcom/sightcall/universal/model/Config;)Z
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Attributes;->guest:Lcom/sightcall/universal/agent/Usecase$Guest;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->guestVideoWhileTakePicture:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
