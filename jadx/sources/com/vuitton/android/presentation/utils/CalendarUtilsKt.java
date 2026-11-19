package com.vuitton.android.presentation.utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.foundation.logger.Logger;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CalendarUtilsKt {
    public static final Long a(Logger logger, CalendarEventUiModel calendarEventUiModel, Context context) {
        Long lValueOf;
        Object failure;
        String lastPathSegment;
        logger.getClass();
        calendarEventUiModel.getClass();
        context.getClass();
        Long lB = b(context);
        if (lB != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ContentResolver contentResolver = context.getContentResolver();
                ContentValues contentValues = new ContentValues();
                Long l = calendarEventUiModel.f51774k;
                Integer num = calendarEventUiModel.f51771h;
                Integer num2 = calendarEventUiModel.g;
                contentValues.put("dtstart", l);
                contentValues.put("dtend", calendarEventUiModel.l);
                contentValues.put("title", calendarEventUiModel.f51769e);
                contentValues.put("description", calendarEventUiModel.f51770f);
                contentValues.put("calendar_id", lB);
                contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                contentValues.put("hasAlarm", (Integer) 1);
                Uri uriInsert = contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues);
                lValueOf = (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null) ? null : Long.valueOf(Long.parseLong(lastPathSegment));
                if (lValueOf != null) {
                    if (num2 != null) {
                        try {
                            c(contentResolver, lValueOf.longValue(), num2.intValue());
                        } catch (Throwable th) {
                            th = th;
                            Result.Companion companion2 = Result.INSTANCE;
                            failure = new Result.Failure(th);
                        }
                    }
                    if (num != null) {
                        c(contentResolver, lValueOf.longValue(), num.intValue());
                    }
                }
                d(contentResolver, lB.longValue());
                failure = Unit.f71739a;
            } catch (Throwable th2) {
                th = th2;
                lValueOf = null;
            }
            if (!(failure instanceof Result.Failure)) {
                return lValueOf;
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                thA.getMessage();
            }
        }
        return null;
    }

    public static final Long b(Context context) {
        String[] strArr = {"_id", "calendar_displayName"};
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = CalendarContract.Calendars.CONTENT_URI;
        Cursor cursorQuery = contentResolver.query(uri, strArr, "visible=1 AND isPrimary=1", null, "_id ASC");
        if (cursorQuery != null && cursorQuery.getCount() <= 0) {
            cursorQuery = context.getContentResolver().query(uri, strArr, "visible=1", null, "_id ASC");
        }
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            return null;
        }
        String string = cursorQuery.getString(cursorQuery.getColumnIndex(strArr[0]));
        string.getClass();
        cursorQuery.close();
        return Long.valueOf(Long.parseLong(string));
    }

    public static final void c(ContentResolver contentResolver, long j2, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("minutes", Integer.valueOf(i2));
        contentValues.put("event_id", Long.valueOf(j2));
        contentValues.put("method", (Integer) 1);
        contentResolver.insert(CalendarContract.Reminders.CONTENT_URI, contentValues);
    }

    public static final void d(ContentResolver contentResolver, long j2) {
        contentResolver.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("sync_events", (Integer) 1);
        contentValues.put("visible", (Integer) 1);
        contentResolver.update(ContentUris.withAppendedId(CalendarContract.Calendars.CONTENT_URI, j2), contentValues, null, null);
    }
}
