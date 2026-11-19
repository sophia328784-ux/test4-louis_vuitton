.class public Lcom/sightcall/universal/agent/Identity$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fcmToken:Ljava/lang/String;

.field private googleAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/sightcall/universal/R$string;->google_app_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/agent/Identity$Builder;->googleAppId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/agent/Identity$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity$Builder;->fcmToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/agent/Identity$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity$Builder;->googleAppId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/agent/Identity;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/agent/Identity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/agent/Identity;-><init>(Lcom/sightcall/universal/agent/Identity$Builder;I)V

    return-object v0
.end method

.method public fcmToken(Ljava/lang/String;)Lcom/sightcall/universal/agent/Identity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Identity$Builder;->fcmToken:Ljava/lang/String;

    return-object p0
.end method

.method public googleAppId(Ljava/lang/String;)Lcom/sightcall/universal/agent/Identity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Identity$Builder;->googleAppId:Ljava/lang/String;

    return-object p0
.end method
