.class public final Lcom/perfectcorp/perfectlib/internal/a;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/perfectcorp/perfectlib/internal/a;


# instance fields
.field public final countly:Z

.field public final debugLog:Z

.field final dumpDatabases:Z

.field final dumpFiles:Z

.field final dumpPreferences:Z

.field public final file:Z

.field public final flushCountly:Z

.field public final http:Z

.field public final logcat:Z

.field public final requestScheduling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/internal/a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->logcat:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->file:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->countly:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->flushCountly:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->debugLog:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->http:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->requestScheduling:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->dumpDatabases:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->dumpFiles:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->dumpPreferences:Z

    return-void
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/internal/a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    return-void
.end method
