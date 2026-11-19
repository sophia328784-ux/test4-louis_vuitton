.class public Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/DataCollectionLevel;)V
    .locals 0

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->e:I

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-void
.end method
