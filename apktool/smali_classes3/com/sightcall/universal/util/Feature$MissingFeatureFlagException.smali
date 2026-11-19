.class public Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/util/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingFeatureFlagException"
.end annotation


# instance fields
.field private final feature:Lcom/sightcall/universal/util/Feature;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/util/Feature;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/util/Feature;->AGENT:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;->feature:Lcom/sightcall/universal/util/Feature;

    return-void
.end method


# virtual methods
.method public feature()Lcom/sightcall/universal/util/Feature;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;->feature:Lcom/sightcall/universal/util/Feature;

    return-object p0
.end method
