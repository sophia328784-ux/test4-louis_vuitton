.class public Lcom/sightcall/universal/agent/CreateCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/CreateCode$Media;,
        Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;,
        Lcom/sightcall/universal/agent/CreateCode$Builder;
    }
.end annotation


# instance fields
.field final countryCode:Ljava/lang/String;

.field final media:Lcom/sightcall/universal/agent/CreateCode$Media;

.field final recipient:Ljava/lang/String;

.field final reference:Ljava/lang/String;

.field final usecase:Lcom/sightcall/universal/agent/Usecase;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateCode;->media:Lcom/sightcall/universal/agent/CreateCode$Media;

    iput-object p2, p0, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iput-object p4, p0, Lcom/sightcall/universal/agent/CreateCode;->recipient:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/universal/agent/CreateCode;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/agent/CreateCode;->reference:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/agent/CreateCode;-><init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static email(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/agent/CreateCode$Builder;

    sget-object v1, Lcom/sightcall/universal/agent/CreateCode$Media;->EMAIL:Lcom/sightcall/universal/agent/CreateCode$Media;

    invoke-direct {v0, v1, p0, p1}, Lcom/sightcall/universal/agent/CreateCode$Builder;-><init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sms(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;-><init>(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V

    return-object v0
.end method

.method public static url(Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/agent/CreateCode$Builder;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/CreateCode$Builder;

    sget-object v1, Lcom/sightcall/universal/agent/CreateCode$Media;->URL:Lcom/sightcall/universal/agent/CreateCode$Media;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/agent/CreateCode$Builder;-><init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public media()Lcom/sightcall/universal/agent/CreateCode$Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateCode;->media:Lcom/sightcall/universal/agent/CreateCode$Media;

    return-object p0
.end method

.method public recipient()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateCode;->recipient:Ljava/lang/String;

    return-object p0
.end method

.method public reference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateCode;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public usecase()Lcom/sightcall/universal/agent/Usecase;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    return-object p0
.end method
