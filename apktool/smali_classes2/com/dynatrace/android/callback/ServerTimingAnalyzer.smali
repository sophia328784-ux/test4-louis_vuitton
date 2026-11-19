.class public Lcom/dynatrace/android/callback/ServerTimingAnalyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/regex/Pattern;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "(?:dtSInfo;desc=\"?)(.*?)(?:\"|;|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;->a:Ljava/util/regex/Pattern;

    const/16 v0, 0x32

    iput v0, p0, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;->b:I

    return-void
.end method
