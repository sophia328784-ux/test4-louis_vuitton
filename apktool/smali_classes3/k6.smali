.class public final synthetic Lk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, Lk6;->b:I

    iput-object p1, p0, Lk6;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lk6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lk6;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk6;->d:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket;

    iget-wide v1, p0, Lk6;->c:J

    invoke-static {v0, v1, v2}, Lokhttp3/internal/ws/RealWebSocket;->d(Lokhttp3/internal/ws/RealWebSocket;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lk6;->d:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    iget-wide v1, p0, Lk6;->c:J

    sget-object p0, Lokhttp3/internal/http2/Http2Connection;->C:Lokhttp3/internal/http2/Http2Connection$Companion;

    monitor-enter v0

    :try_start_0
    iget-wide v3, v0, Lokhttp3/internal/http2/Http2Connection;->o:J

    iget-wide v5, v0, Lokhttp3/internal/http2/Http2Connection;->n:J

    cmp-long p0, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lokhttp3/internal/http2/Http2Connection;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p0, v4

    :goto_0
    monitor-exit v0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, v3, v4, v4}, Lokhttp3/internal/http2/Http2Writer;->j(IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v3, v3, p0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lk6;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-wide v1, p0, Lk6;->c:J

    sget p0, Landroidx/compose/material3/DatePickerKt;->a:F

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lk6;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    iget-wide v1, p0, Lk6;->c:J

    sget p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->j:I

    check-cast v0, Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
