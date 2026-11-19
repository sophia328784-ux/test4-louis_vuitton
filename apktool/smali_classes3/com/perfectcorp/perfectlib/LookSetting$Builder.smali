.class public final Lcom/perfectcorp/perfectlib/LookSetting$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/LookSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/LookSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/LookSetting;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookSetting$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/LookSetting;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/LookSetting;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/LookSetting;-><init>(Lcom/perfectcorp/perfectlib/LookSetting$Builder;)V

    return-object v0
.end method

.method public final setLookGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/LookSetting$Builder;
    .locals 1

    const-string v0, "lookGuid can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookSetting$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
