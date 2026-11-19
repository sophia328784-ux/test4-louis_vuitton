.class public Lcom/sightcall/universal/agent/CreateCode$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/CreateCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field countryCode:Ljava/lang/String;

.field final media:Lcom/sightcall/universal/agent/CreateCode$Media;

.field final recipient:Ljava/lang/String;

.field reference:Ljava/lang/String;

.field final usecase:Lcom/sightcall/universal/agent/Usecase;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->media:Lcom/sightcall/universal/agent/CreateCode$Media;

    iput-object p2, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iput-object p3, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->recipient:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/agent/CreateCode;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/agent/CreateCode;

    iget-object v1, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->media:Lcom/sightcall/universal/agent/CreateCode$Media;

    iget-object v2, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v3, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->reference:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->recipient:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->countryCode:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/agent/CreateCode;-><init>(Lcom/sightcall/universal/agent/CreateCode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public reference(Ljava/lang/String;)Lcom/sightcall/universal/agent/CreateCode$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateCode$Builder;->reference:Ljava/lang/String;

    return-object p0
.end method
