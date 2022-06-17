package com.happy.world.component;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.happy.world.utils.Out;

public class CheckSendOrder {
    public static Set<String> getNextSendChannel(String sendMacroOrder, String sendType) throws Exception{
    	Set<String> nextSendTypeChannels = new HashSet<>();
    	String channel = sendType.toString();
    	if(channel.startsWith("RCS")) {
    		if(sendMacroOrder.endsWith("RCS")) return nextSendTypeChannels;
    	}else {
    		if(sendMacroOrder.endsWith(channel)) return nextSendTypeChannels;
    	}
    	
    	List<String> channels = Arrays.asList(sendMacroOrder.split(">")) ;
    	int index = channels.indexOf(channel);
    	String nextChannel =  channels.get(index+1);
    	String[] nextChannelArray = nextChannel.split(",");
    	for(String n :nextChannelArray) {
    		nextSendTypeChannels.add(String.valueOf(n));
    	}
        return nextSendTypeChannels;
    }
	public static void main(String[] args) throws Exception {
		Set<String> set= getNextSendChannel("KKOALT>SMS>PUSH>RCS,MMS","KKO");
		for(String s: set) {
			Out.print(s);
		}
	}
}
