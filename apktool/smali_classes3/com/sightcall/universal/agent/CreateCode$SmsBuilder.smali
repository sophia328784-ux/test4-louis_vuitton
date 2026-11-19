.class public Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;
.super Lcom/sightcall/universal/agent/CreateCode$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/CreateCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsBuilder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/CreateCode$Media;->SMS:Lcom/sightcall/universal/agent/CreateCode$Media;

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/universal/agent/CreateCode$Builder;-><init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public countryCode(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic reference(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;->reference(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;

    move-result-object p0

    return-object p0
.end method

.method public reference(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$SmsBuilder;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/sightcall/universal/agent/CreateCode$Builder;->reference(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$Builder;

    return-object p0
.end method
