.class Lcom/sightcall/universal/agent/Lead$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Lead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field final companyName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "company-name"
    .end annotation
.end field

.field final companyRegion:Lcom/sightcall/universal/agent/Lead$Region;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "company-region"
    .end annotation
.end field

.field final emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "email-address"
    .end annotation
.end field

.field final firstName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "first-name"
    .end annotation
.end field

.field final lastName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "last-name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/Lead$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sightcall/universal/agent/Lead$Builder;->d(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->firstName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Lead$Builder;->e(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->lastName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Lead$Builder;->c(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->emailAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Lead$Builder;->a(Lcom/sightcall/universal/agent/Lead$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->companyName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Lead$Builder;->b(Lcom/sightcall/universal/agent/Lead$Builder;)Lcom/sightcall/universal/agent/Lead$Region;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->companyRegion:Lcom/sightcall/universal/agent/Lead$Region;

    return-void
.end method
