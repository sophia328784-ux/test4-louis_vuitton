.class public Lcom/dynatrace/android/agent/util/SdkVersionProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/util/SdkVersionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return p0
.end method
