.class public Lcom/google/i18n/phonenumbers/internal/RegexCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache;->a:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache;->a:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    check-cast v1, Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache;->a:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
