.class public Lcom/sightcall/universal/agent/Lead$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Lead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private companyName:Ljava/lang/String;

.field private companyRegion:Lcom/sightcall/universal/agent/Lead$Region;

.field private emailAddress:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Builder;->companyName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/agent/Lead$Builder;)Lcom/sightcall/universal/agent/Lead$Region;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Builder;->companyRegion:Lcom/sightcall/universal/agent/Lead$Region;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Builder;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Builder;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Builder;->lastName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/agent/Lead;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/agent/Lead;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/agent/Lead;-><init>(Lcom/sightcall/universal/agent/Lead$Builder;I)V

    return-object v0
.end method

.method public companyName(Ljava/lang/String;)Lcom/sightcall/universal/agent/Lead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Builder;->companyName:Ljava/lang/String;

    return-object p0
.end method

.method public companyRegion(Lcom/sightcall/universal/agent/Lead$Region;)Lcom/sightcall/universal/agent/Lead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Builder;->companyRegion:Lcom/sightcall/universal/agent/Lead$Region;

    return-object p0
.end method

.method public emailAddress(Ljava/lang/String;)Lcom/sightcall/universal/agent/Lead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Builder;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public firstName(Ljava/lang/String;)Lcom/sightcall/universal/agent/Lead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Builder;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public lastName(Ljava/lang/String;)Lcom/sightcall/universal/agent/Lead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Builder;->lastName:Ljava/lang/String;

    return-object p0
.end method
