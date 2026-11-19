.class public Lcom/android/wiimu/config/LinkplayConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/config/LinkplayConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bUpnpService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wiimu/config/LinkplayConfiguration$Builder;->bUpnpService:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/wiimu/config/LinkplayConfiguration;
    .locals 2

    new-instance v0, Lcom/android/wiimu/config/LinkplayConfiguration;

    iget-boolean p0, p0, Lcom/android/wiimu/config/LinkplayConfiguration$Builder;->bUpnpService:Z

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wiimu/config/LinkplayConfiguration;-><init>(ZI)V

    return-object v0
.end method

.method public setUpnpService(Z)Lcom/android/wiimu/config/LinkplayConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/wiimu/config/LinkplayConfiguration$Builder;->bUpnpService:Z

    return-object p0
.end method
